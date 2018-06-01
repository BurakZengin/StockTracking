/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.controller;

import com.stoktakip.domain.Kategoriler;
import com.stoktakip.domain.Stok;
import com.stoktakip.domain.Urun;
import com.stoktakip.domain.User;
import com.stoktakip.service.KategorilerService;
import com.stoktakip.service.StokService;
import com.stoktakip.service.UrunService;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
    @Autowired
    private StokService stokService;

    @RequestMapping(value = "/Kategoriler", method = RequestMethod.GET)
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
            List<Urun> u = urunService.findByProperty("kategori", kategori);
            for (Urun urun : u) {
                List<Stok> s = stokService.findByProperty("urun", urun.getUrunAdi());
                for (Stok stok : s) {
                    stokService.delete(stok);
                }
                urunService.delete(urun);
            }

            return "redirect:Kategoriler";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/UrunEkleme", method = RequestMethod.GET)
    public String UrunEkleme(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            List<Kategoriler> listKategori = kategorilerService.findAll();
            List<Urun> listUrun = urunService.findAll();
            m.addAttribute("urunList", listUrun);
            m.addAttribute("urunKategori", listKategori);
            return "UrunEkleme";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/UrunSilSubmit", method = RequestMethod.POST)
    public String UrunSilSubmit(Model m, HttpSession session,
            @RequestParam("urunAdi") String urunAdi) {
        if (nameSurname(m, session)) {
            List<Urun> u = urunService.findByProperty("urunAdi", urunAdi);
            List<Stok> s = stokService.findByProperty("urun", urunAdi);
            for (Urun urun : u) {
                urunService.delete(urun);
            }
            for (Stok stok : s) {
                stokService.delete(stok);
            }
            return "redirect:UrunEkleme";
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

            String stokSayisis = stokSayisi;
            String urunAdis = urunAdi;

            Urun u = new Urun();
            u.setUrunAdi(urunAdis);
            u.setKategori(kategori);
            u.setAlisFiyati(alisFiyati);
            u.setSatisFiyati(satisFiyati);
            u.setStokAdedi(stokSayisis);
            u.setKdvOrani(kdvOrani);
            u.setBirim(birim);
            urunService.save(u);

            DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
            Date date = new Date();

            Stok s = new Stok();
            s.setIslemTuru("Giris");
            s.setMiktar(stokSayisis);
            s.setAciklama("Urun Eklenirken Girilen Stok");
            s.setTarih(dateFormat.format(date));
            s.setUrun(urunAdis);
            stokService.save(s);
            return "redirect:UrunEkleme";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/UrunDetay={idUrun}", method = RequestMethod.POST)
    public String StokGirisCikis(Model m, HttpSession session,
            @PathVariable("idUrun") String idUrun,
            @RequestParam("aciklama") String aciklama,
            @RequestParam("miktar") int miktar,
            @RequestParam("urunAdi") String urunAdi,
            @RequestParam("Button") String Button,
            @RequestParam("tarih") String tarih) {
        if (nameSurname(m, session)) {

            Stok s = new Stok();
            List<Urun> u = urunService.findByProperty("idUrun", idUrun);
            for (Urun urun : u) {
                s.setUrun(urun.getUrunAdi());
                if (Button.equals("Giris")) {
                    s.setIslemTuru("Giris");
                    int yeniStokAdedi = Integer.parseInt(urun.getStokAdedi()) + miktar;
                    urun.setStokAdedi("" + yeniStokAdedi);
                } else {
                    s.setIslemTuru("Cikis");
                    int yeniStokAdedi = Integer.parseInt(urun.getStokAdedi()) - miktar;
                    urun.setStokAdedi("" + yeniStokAdedi);
                }
                urunService.update(urun);
            }
            s.setAciklama(aciklama);
            s.setMiktar("" + miktar);
            s.setTarih(tarih);
            stokService.save(s);
            return "redirect:UrunDetay=" + idUrun;
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/UrunDetay={idUrun}", method = RequestMethod.GET)
    public String UrunDetay(Model m, HttpSession session, @PathVariable("idUrun") int idUrun) {
        if (nameSurname(m, session)) {
            DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
            Date date = new Date();
            m.addAttribute("tarih", dateFormat.format(date));
            Urun u = urunService.findById(idUrun);
            m.addAttribute("urunBilgileri", u);
            List<Stok> list = stokService.findByProperty("urun", u.getUrunAdi());
            m.addAttribute("urunTablo", list);
            return "UrunDetay";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/StokTakp", method = RequestMethod.GET)
    public String StokTakp(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            List<Urun> list = urunService.findAll();
            m.addAttribute("urunKategori", list);
            return "StokTakp";
        } else {
            return "redirect:/";
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
