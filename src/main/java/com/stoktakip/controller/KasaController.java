/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.controller;

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
        User u = (User) session.getAttribute("user");
        if (u.getRoles().equals("0")) {
            return "redirect:StokTakp";
        } else {
            if (nameSurname(m, session)) {
                List<Kasa> k = kasaService.findAll();
                int butce = 0;
                for (Kasa kasa : k) {
                    if (kasa.getTip().equals("Giris")) {
                        butce += Float.parseFloat(kasa.getTutar());
                    } else {
                        butce -= Float.parseFloat(kasa.getTutar());
                    }
                }
                m.addAttribute("butce", butce);
                m.addAttribute("kasaList", k);
                return "Kasa";
            } else {
                return "redirect:/";
            }
        }
    }

    @RequestMapping(value = "/KasaGiris", method = RequestMethod.GET)
    public String KasaGiris(Model m, HttpSession session) {
        User u = (User) session.getAttribute("user");
        if (u.getRoles().equals("0")) {
            return "redirect:StokTakp";
        } else {
            if (nameSurname(m, session)) {
                DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
                Date date = new Date();
                m.addAttribute("tarih", dateFormat.format(date));
                return "KasaGiris";
            } else {
                return "redirect:/";
            }
        }
    }

    @RequestMapping(value = "/KasaGiris", method = RequestMethod.POST)
    public String KasaGirisSubmit(Model m, HttpSession session,
            @RequestParam("tarih") String tarih,
            @RequestParam("aciklama") String aciklama,
            @RequestParam("tutar") String tutar) {
        User u = (User) session.getAttribute("user");
        if (u.getRoles().equals("0")) {
            return "redirect:StokTakp";
        } else {
            if (nameSurname(m, session)) {
                User user = (User) session.getAttribute("user");
                Kasa kasa = new Kasa();
                kasa.setTarih(tarih);
                kasa.setTip("Giris");
                kasa.setAciklama(aciklama);
                kasa.setTutar(tutar);
                kasa.setYetkili(user.getName() + " " + user.getSurname());
                kasaService.save(kasa);
                return "redirect:/Kasa";
            } else {
                return "redirect:/";
            }
        }
    }

    @RequestMapping(value = "/KasaCikis", method = RequestMethod.GET)
    public String KasaCikis(Model m, HttpSession session) {
        User u = (User) session.getAttribute("user");
        if (u.getRoles().equals("0")) {
            return "redirect:StokTakp";
        } else {
            if (nameSurname(m, session)) {
                DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
                Date date = new Date();
                m.addAttribute("tarih", dateFormat.format(date));
                return "KasaCikis";
            } else {
                return "redirect:/";
            }
        }
    }

    @RequestMapping(value = "/KasaCikis", method = RequestMethod.POST)
    public String KasaCikiSubmit(Model m, HttpSession session,
            @RequestParam("tarih") String tarih,
            @RequestParam("aciklama") String aciklama,
            @RequestParam("tutar") String tutar) {
        User u = (User) session.getAttribute("user");
        if (u.getRoles().equals("0")) {
            return "redirect:StokTakp";
        } else {
            if (nameSurname(m, session)) {
                User user = (User) session.getAttribute("user");
                Kasa kasa = new Kasa();
                kasa.setTarih(tarih);
                kasa.setTip("Cikis");
                kasa.setAciklama(aciklama);
                kasa.setTutar(tutar);
                kasa.setYetkili(user.getName() + " " + user.getSurname());
                kasaService.save(kasa);
                return "redirect:/Kasa";
            } else {
                return "redirect:/";
            }
        }
    }

    public boolean nameSurname(Model m, HttpSession session) {
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
