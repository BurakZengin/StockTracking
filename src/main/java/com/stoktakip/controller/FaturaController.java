/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.controller;

import static com.stoktakip.controller.StokController.nameSurname;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

/**
 *
 * @author Elidor
 */
@Controller
public class FaturaController {

    @RequestMapping(value = "/Fatura")
    public String Fatura(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            return "Fatura";
        } else {
            return "redirect:/";
        }
    }
}
