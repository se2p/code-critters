package org.codecritters.code_critters.web.enums;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2024 Code Critter contributors
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

/**
 * Represents the types of inputs expected in hint mode. Field_Click means a field click is expected,
 * Portal_Build means building a portal code is expected, Save_Portal expects to click save for a portal
 */
public enum ExpectedInteraction {
    FIELD_CLICK,
    PORTAL_BUILD,
    SAVE_PORTAL,
    SELECT_ANSWER
}
