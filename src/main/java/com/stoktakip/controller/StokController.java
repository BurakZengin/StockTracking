/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.controller;

import com.stoktakip.domain.Kategoriler;
import com.stoktakip.domain.Urun;
import com.stoktakip.domain.User;
import com.stoktakip.service.KategorilerService;
import com.stoktakip.service.UrunService;
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
public class StokController {

    @Autowired
    private UrunService urunService;
    @Autowired
    private KategorilerService kategorilerService;

    @RequestMapping(value = "/Kategoriler")
    public String Kategoriler(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            List<Kategoriler> list = kategorilerService.findAll();
            m.addAttribute("kategorilerList", list);
            m.addAttribute("kategoriSilme", list);
            return "Kategoriler";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/KategoriEkle", method = RequestMethod.POST)
    public String KategorilerEkle(Model m, HttpSession session,
            @RequestParam("kategori") String kategori) {
        if (nameSurname(m, session)) {
            Kategoriler k = new Kategoriler();
            k.setKategori(kategori);
            kategorilerService.save(k);
            return "redirect:Kategoriler";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/KategoriSil", method = RequestMethod.POST)
    public String KategoriSilme(Model m, HttpSession session,
            @RequestParam("kategoriSil") String kategori) {
        if (nameSurname(m, session)) {
            Kategoriler k = new Kategoriler();
            k.setKategori(kategori);
            kategorilerService.delete(k);
            return "redirect:Kategoriler";
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

    @RequestMapping(value = "/UrunEkleSubmit", method = RequestMethod.POST)
    public String UrunEkleSubmit(Model m, HttpSession session,
            @RequestParam("kategori") String kategori,
            @RequestParam("urunAdi") String urunAdi,
            @RequestParam("birim") String birim,
            @RequestParam("alisFiyati") String alisFiyati,
            @RequestParam("kdvOrani") String kdvOrani,
            @RequestParam("satisFiyati") String satisFiyati,
            @RequestParam("stokSayisi") String stokSayisi) {

        if (nameSurname(m, session)) {
            Urun u = new Urun();
            u.setUrunAdi(urunAdi);
            u.setKategori(kategori);
            u.setAlisFiyati(alisFiyati);
            u.setSatisFiyati(satisFiyati);
            u.setStokAdedi(stokSayisi);
            u.setKdvOrani(kdvOrani);
            u.setBirim(birim);
            urunService.save(u);
            return "redirect:UrunEkleme";
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
