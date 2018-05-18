/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.controller;

import static com.stoktakip.controller.StokController.nameSurname;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Elidor
 */
@Controller
public class CariHesaplarController {

    @RequestMapping(value = "/CariTakip")
    public String CariTakip(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            return "CariTakip";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/CariHesapDetayi")
    public String CariHesapDetayi(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            return "CariHesapDetayi";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/CariTahsilat")
    public String CariTahsilat(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            return "CariTahsilat";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/CariAlacaklandir")
    public String CariAlacaklandir(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            return "CariAlacaklandir";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/CariDuzenle")
    public String CariDuzenle(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            return "CariDuzenle";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/CariBorclandir")
    public String CariBorclandir(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            return "CariBorclandir";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/CariOdeme")
    public String CariOdeme(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            return "CariOdeme";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/CariEkle")
    public String CariEkle(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            return "CariEkle";
        } else {
            return "redirect:/";
        }
    }
}
