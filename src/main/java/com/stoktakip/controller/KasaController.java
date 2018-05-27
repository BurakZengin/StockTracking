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
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Elidor
 */
@Controller
public class KasaController {

    @RequestMapping(value = "/Kasa", method = RequestMethod.GET)
    public String KasaTakip(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            return "Kasa";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/KasaGiris")
    public String KasaGiris(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            return "KasaGiris";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/KasaCikis")
    public String KasaCikis(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            return "KasaCikis";
        } else {
            return "redirect:/";
        }
    }
}
