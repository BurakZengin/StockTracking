/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.service;

/**
 *
 * @author Elidor
 */
public interface MailService {

    public void sendEmail(final Object object, int pin);
}
