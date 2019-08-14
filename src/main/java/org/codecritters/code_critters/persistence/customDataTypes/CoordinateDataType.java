package org.codecritters.code_critters.persistence.customDataTypes;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 Michael Gruber
 * %%
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public
 * License along with this program.  If not, see
 * <http://www.gnu.org/licenses/gpl-3.0.html>.
 * #L%
 */

import org.hibernate.HibernateException;
import org.hibernate.engine.spi.SharedSessionContractImplementor;
import org.hibernate.usertype.UserType;

import java.io.Serializable;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.HashMap;
import java.util.Map;

public class CoordinateDataType implements UserType {

    protected static final int[] SQL_TYPES = {Types.VARCHAR};

    @Override
    public int[] sqlTypes() {
        return new int[]{Types.VARCHAR};
    }

    @Override
    public Class returnedClass() {
        return String[][].class;
    }

    @Override
    public boolean equals(Object x, Object y) throws HibernateException {
        if (x == null) {
            return y == null;
        }
        if (x instanceof HashMap && y instanceof HashMap) {
            HashMap<String, Integer> tempX = (HashMap<String, Integer>) x;
            HashMap<String, Integer> tempY = (HashMap<String, Integer>) y;
            return tempX.equals(tempY);
        }
        return false;
    }

    @Override
    public int hashCode(Object x) throws HibernateException {
        return x.hashCode();
    }

    @Override
    public Object nullSafeGet(ResultSet rs, String[] names, SharedSessionContractImplementor session, Object owner) throws HibernateException, SQLException {
        if (rs.wasNull()) {
            return null;
        }
        if (rs.getString(names[0]) == null) {
            return new Integer[0];
        }

        return parseStringToHashMap(rs.getString(names[0]));
    }

    @Override
    public void nullSafeSet(PreparedStatement st, Object value, int index, SharedSessionContractImplementor session) throws HibernateException, SQLException {
        if (value == null) {
            st.setNull(index, SQL_TYPES[0]);
        } else {
            HashMap<String, Integer> castObject = (HashMap<String, Integer>) value;
            st.setString(index, parseHashMapToString(castObject));
        }
    }

    @Override
    public Object deepCopy(Object value) throws HibernateException {
        return value;
    }

    @Override
    public boolean isMutable() {
        return true;
    }

    @Override
    public Serializable disassemble(Object value) throws HibernateException {
        return (Integer[]) this.deepCopy(value);
    }

    @Override
    public Object assemble(Serializable cached, Object owner) throws HibernateException {
        return this.deepCopy(cached);
    }

    @Override
    public Object replace(Object original, Object target, Object owner) throws HibernateException {
        return original;
    }

    private String parseHashMapToString(HashMap<String, Integer> level) {
        StringBuilder res = new StringBuilder();
        for (Map.Entry<String, Integer> entry : level.entrySet()) {
            res.append("{");
            res.append("[").append(entry.getKey()).append("]");
            res.append("[").append(entry.getValue()).append("]");
            res.append("}");
        }
        return res.toString();
    }

    private HashMap<String, Integer> parseStringToHashMap(String level) {
        HashMap<String, Integer> map = new HashMap<String, Integer>();
        level = level.replace("{", "");
        String[] temp = level.split("}");
        for (int i = 0; i < temp.length; ++i) {
            temp[i] = temp[i].replace("[", "");
            String[] temp2 = temp[i].split("]");
            map.put(temp2[0], Integer.parseInt(temp2[1]));
        }
        return map;
    }
}
