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
import com.stoktakip.util.HibernateUtil;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.query.Query;
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
                // --- Musteri Sayisi --- //
                List<Cari> cari = cariService.findAll();
                m.addAttribute("musteriSayisi", cari.size());
                // --- Toplam Vade --- //
                List<CariHareketleri> cariHareketleriBorc = cariHareketleriService.findByProperty("islemTuru", "Borc");
                int toplamVadeliBorc = 0;
                for (CariHareketleri cariHareketleri : cariHareketleriBorc) {
                    if (cariHareketleri.getUnq().equals("1")) {
                        toplamVadeliBorc += Float.parseFloat(cariHareketleri.getIslemTutari());
                    }
                }
                m.addAttribute("toplamVade", toplamVadeliBorc);
                // --- Stogu Biten Urunler && Stok Degeri --- //
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

                // --- Gunluk Kar --- //
                DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
                Date date = new Date();
                float gunlukKar = 0;
                List<CariHareketleri> kar = cariHareketleriService.findByProperty("islemTarihi", dateFormat.format(date));
                for (CariHareketleri cariHareketleri : kar) {
                    if (cariHareketleri.getIslemTuru().equals("Satis") && cariHareketleri.getUnq().equals("1")) {
                        gunlukKar += Float.parseFloat(cariHareketleri.getKar());
                    }
                }
                m.addAttribute("gunlukKar", gunlukKar);

                // --- Aylik Kar --- //
                float aylikKar = 0;
                DateFormat dateFormats = new SimpleDateFormat("MM/yyyy");
                Date dates = new Date();
                Session sessions = HibernateUtil.getSessionFactory().openSession();
                try {
                    Query query = sessions.createSQLQuery(
                            "select * from deed2auv4cn33pxa.carihareketleri s where s.unq = '1' and s.islemTuru = 'Satis' and s.islemTarihi like '%" + dateFormats.format(dates) + "%'")
                            .addEntity(CariHareketleri.class);
                    List<CariHareketleri> result = query.list();
                    for (CariHareketleri object : result) {
                        aylikKar += Float.parseFloat(object.getKar());
                    }
                    System.out.println(aylikKar);
                    m.addAttribute("aylikKar", aylikKar);
                } finally {
                    sessions.close();
                }
                // --- Grafikler --- //
                // --- Haftalik Satis Dagilimi --- //
                List<Float> aylikSatisGrafik = new ArrayList<Float>();
                List<Float> aylikGiderGrafik = new ArrayList<Float>();
                DateFormat dateFormat2 = new SimpleDateFormat("dd/MM/yyyy");
                Session session2 = HibernateUtil.getSessionFactory().openSession();
                try {
                    for (int i = 1; i < 8; i++) {
                        float toplam = 0;
                        float toplamGider = 0;
                        Calendar cal = Calendar.getInstance();
                        cal.add(Calendar.DATE, -i);
                        Query query = session2.createSQLQuery(
                                "select * from deed2auv4cn33pxa.carihareketleri s where s.unq = '1' and s.islemTarihi = '" + dateFormat2.format(cal.getTime()) + "'")
                                .addEntity(CariHareketleri.class);
                        List<CariHareketleri> result = query.list();
                        if (result.size() >= 0) {
                            for (CariHareketleri cariHareketleri : result) {
                                if (cariHareketleri.getIslemTuru().equals("Satis")) {
                                    toplam += Float.parseFloat(cariHareketleri.getIslemTutari());
                                } else if (cariHareketleri.getIslemTuru().equals("Alis")) {
                                    toplamGider += Float.parseFloat(cariHareketleri.getIslemTutari());
                                }
                            }
                            aylikGiderGrafik.add(toplamGider);
                            aylikSatisGrafik.add(toplam);
                        } else {
                            aylikGiderGrafik.add(toplamGider);
                            aylikSatisGrafik.add(toplam);
                        }
                    }
                } finally {
                    session2.close();
                }
                for (Float float1 : aylikSatisGrafik) {
                    System.out.println(float1.toString());
                }
                m.addAttribute("haftalikGider", aylikGiderGrafik);
                m.addAttribute("aylikSatisGrafik", aylikSatisGrafik);
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
