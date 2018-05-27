/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.controller;

import static com.stoktakip.controller.StokController.nameSurname;
import com.stoktakip.domain.Kasa;
import com.stoktakip.domain.User;
import com.stoktakip.service.KasaService;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Elidor
 */
@Controller
public class KasaController {

    @Autowired
    private KasaService kasaService;

    @RequestMapping(value = "/Kasa", method = RequestMethod.GET)
    public String KasaTakip(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            List<Kasa> k = kasaService.findAll();
            int butce = 0;
            for (Kasa kasa : k) {
                if (kasa.getTip().equals("Giris")) {
                    butce += Integer.parseInt(kasa.getTutar());
                } else {
                    butce -= Integer.parseInt(kasa.getTutar());
                }
            }
            m.addAttribute("butce", butce);
            m.addAttribute("kasaList", k);
            return "Kasa";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/KasaGiris", method = RequestMethod.GET)
    public String KasaGiris(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
            Date date = new Date();
            m.addAttribute("tarih", dateFormat.format(date));
            return "KasaGiris";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/KasaGiris", method = RequestMethod.POST)
    public String KasaGirisSubmit(Model m, HttpSession session,
            @RequestParam("tarih") String tarih,
            @RequestParam("aciklama") String aciklama,
            @RequestParam("tutar") String tutar) {
        if (nameSurname(m, session)) {
            User user = (User) session.getAttribute("user");
            Kasa u = new Kasa();
            u.setTarih(tarih);
            u.setTip("Giris");
            u.setAciklama(aciklama);
            u.setTutar(tutar);
            u.setYetkili(user.getName() + " " + user.getSurname());
            kasaService.save(u);
            return "redirect:/Kasa";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/KasaCikis", method = RequestMethod.GET)
    public String KasaCikis(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
            Date date = new Date();
            m.addAttribute("tarih", dateFormat.format(date));
            return "KasaCikis";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/KasaCikis", method = RequestMethod.POST)
    public String KasaCikiSubmit(Model m, HttpSession session,
            @RequestParam("tarih") String tarih,
            @RequestParam("aciklama") String aciklama,
            @RequestParam("tutar") String tutar) {
        if (nameSurname(m, session)) {
            User user = (User) session.getAttribute("user");
            Kasa u = new Kasa();
            u.setTarih(tarih);
            u.setTip("Cikis");
            u.setAciklama(aciklama);
            u.setTutar(tutar);
            u.setYetkili(user.getName() + " " + user.getSurname());
            kasaService.save(u);
            return "redirect:/Kasa";
        } else {
            return "redirect:/";
        }
    }
}
