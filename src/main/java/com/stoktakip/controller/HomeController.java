/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.controller;

import com.stoktakip.domain.Cari;
import com.stoktakip.domain.CariHareketleri;
import com.stoktakip.domain.Urun;
import com.stoktakip.domain.User;
import com.stoktakip.service.CariHareketleriService;
import com.stoktakip.service.CariService;
import com.stoktakip.service.UrunService;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Elidor
 */
@Controller
public class HomeController {

    @Autowired
    private CariService cariService;
    @Autowired
    private CariHareketleriService cariHareketleriService;
    @Autowired
    private UrunService urunService;

    @RequestMapping(value = "/Anasayfa")
    public String Anasayfa(Model m, HttpSession session) {
        User u = (User) session.getAttribute("user");
        if (u.getRoles().equals("0")) {
            return "redirect:StokTakp";
        } else {

            if (nameSurname(m, session)) {
                List<Cari> cari = cariService.findAll();
                m.addAttribute("musteriSayisi", cari.size());

                List<CariHareketleri> cariHareketleriBorc = cariHareketleriService.findByProperty("islemTuru", "Borc");
                int toplamVadeliBorc = 0;
                for (CariHareketleri cariHareketleri : cariHareketleriBorc) {
                    if (cariHareketleri.getUnq().equals("1")) {
                        toplamVadeliBorc += Float.parseFloat(cariHareketleri.getIslemTutari());
                    }
                }
                m.addAttribute("toplamVade", toplamVadeliBorc);

                int stokBitenUrun = 0;
                int stokDegeri = 0;
                List<Urun> urun = urunService.findAll();
                for (Urun urun1 : urun) {
                    if (Integer.parseInt(urun1.getStokAdedi()) < 0) {
                        stokBitenUrun++;
                    } else {
                        stokDegeri += Integer.parseInt(urun1.getSatisFiyati()) * Integer.parseInt(urun1.getStokAdedi());
                    }
                }
                m.addAttribute("stokBitenUrunler", stokBitenUrun);
                m.addAttribute("stokDegeri", stokDegeri);
                return "Anasayfa";
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
            m.addAttribute("role", u.getRoles());
            m.addAttribute("name", u.getName() + " ");
            m.addAttribute("surname", u.getSurname());
            return true;
        }
    }
}
