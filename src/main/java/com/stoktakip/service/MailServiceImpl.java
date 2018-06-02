/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.service;

import com.stoktakip.domain.User;
import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

/**
 *
 * @author Elidor
 */
@Service("mailService")
public class MailServiceImpl implements MailService {

    @Autowired
    JavaMailSender mailSender;

    public void sendEmail(Object object, int pin) {
        User user = (User) object;
        MimeMessagePreparator preparator = getMessagePreparator(user, pin);
        try {
            mailSender.send(preparator);
            System.out.println("Message Send...Hurrey");
        } catch (MailException ex) {
            System.err.println(ex.getMessage());
        }
    }

    private MimeMessagePreparator getMessagePreparator(final User user, final int pin) {

        MimeMessagePreparator preparator = new MimeMessagePreparator() {

            @Override
            public void prepare(MimeMessage mimeMessage) throws Exception {
                mimeMessage.setFrom("burakzago96@hotmail.com");
                mimeMessage.setRecipient(Message.RecipientType.TO,
                        new InternetAddress(user.getMail()));
                mimeMessage.setText("Sevgili " + Character.toUpperCase(user.getName().charAt(0)) + user.getName().substring(1) + " "
                        + Character.toUpperCase(user.getSurname().charAt(0)) + user.getSurname().substring(1)
                        + ",\n\nStok Takip yazılımı giriş şifreniz : " + pin + "\nİyi çalışmalar dileriz.");
                mimeMessage.setSubject("Stok Takip Yazılımı Şifre İşlemi");
            }
        };
        return preparator;
    }

}
