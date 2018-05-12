/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.controller;

import com.stoktakip.domain.User;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Elidor
 */
@Controller
public class StokController {

    @RequestMapping(value = "/Kategoriler")
    public String Kategoriler(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            return "Kategoriler";
        } else {
            return "redirect:/";
        }
    }
    
    @RequestMapping(value = "/UrunEkleme")
    public String UrunEkleme(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            return "UrunEkleme";
        } else {
            return "redirect:/";
        }
    }
    
    @RequestMapping(value = "/UrunDetay")
    public String UrunDetay(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            return "UrunDetay";
        } else {
            return "redirect:/";
        }
    }
    
    @RequestMapping(value = "/StokTakp")
    public String StokTakp(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            return "StokTakp";
        } else {
            return "redirect:/";
        }
    }

    static boolean nameSurname(Model m, HttpSession session) {
        User u = (User) session.getAttribute("user");
        if (u == null) {
            return false;
        } else {
            m.addAttribute("name", u.getName() + " ");
            m.addAttribute("surname", u.getSurname());
            return true;
        }
    }
}
