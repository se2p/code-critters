package org.codecritters.code_critters.application.service;

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

import org.codecritters.code_critters.web.enums.Language;
import org.apache.commons.io.FileUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.io.File;
import java.io.IOException;
import java.util.Map;

@Service
public class MailService {

    @Value("${spring.mail.address}")
    private String email;
    @Value("${spring.mail.personal}")
    private String personal;

    private JavaMailSender emailSender;

    private final Logger logger = LogManager.getLogger(MailService.class);

    private static String MAILDIR = "./mail/";

    @Autowired
    public MailService(JavaMailSender emailSender) {
        this.emailSender = emailSender;
    }


    private void sendMessage(MimeMessage message) {
        try {
            emailSender.send(message);
        } catch (MailException e) {
            //TODO store mail in db
            logger.warn(e.getMessage());
        }
    }

    public void sendMessageFromTemplate(String templateName, Map<String, String> data, Language language) {
        MimeMessage message = emailSender.createMimeMessage();

        MimeMessageHelper helper = new MimeMessageHelper(message);
        try {
            helper.setTo(data.get("receiver"));
            helper.setSubject(TranslationsService.translate(language, data.get("subject")));
            helper.setFrom(email, personal);


            String template = this.loadTemplate(templateName, language);
            for (Map.Entry<String, String> entry : data.entrySet()) {
                template = template.replaceAll("\\{\\{" + entry.getKey() + "\\}\\}", entry.getValue());
            }

            helper.setText(template, true);
            this.sendMessage(message);
        } catch (IOException e) {
            logger.warn(e.getMessage());
        } catch (MessagingException e) {
            //TODO store mail in db
            logger.warn(e.getMessage());
        }

    }

    private String loadTemplate(String templateName, Language language) throws IOException {
        File file = new File(MAILDIR + language.toString() + "/" + templateName + ".html");
        return FileUtils.readFileToString(file, "utf-8");
    }
}
