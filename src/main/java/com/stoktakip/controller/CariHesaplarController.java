/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.controller;

import static com.stoktakip.controller.StokController.nameSurname;
import com.stoktakip.domain.Cari;
import com.stoktakip.domain.CariHareketleri;
import com.stoktakip.domain.Urun;
import com.stoktakip.service.CariHareketleriService;
import com.stoktakip.service.CariService;
import com.stoktakip.service.UrunService;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
public class CariHesaplarController {

    @Autowired
    private CariService cariService;
    @Autowired
    private UrunService urunService;
    @Autowired
    private CariHareketleriService cariHareketleriService;

    @RequestMapping(value = "/CariTakip")
    public String CariTakip(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            List<Cari> list = cariService.findAll();
            m.addAttribute("cariList", list);
            return "CariTakip";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/CariHesapDetayi={idCari}")
    public String CariHesapDetayi(Model m, HttpSession session, @PathVariable("idCari") int idCari) {
        if (nameSurname(m, session)) {
            Cari u = cariService.findById(idCari);
            m.addAttribute("cariBilgileri", u);
            List<CariHareketleri> list = cariHareketleriService.findByProperty("idCari", idCari);
            List<CariHareketleri> asilList = new ArrayList<CariHareketleri>();
            for (CariHareketleri cariHareketleri : list) {
                if (cariHareketleri.getUnq().equals("1")) {
                    asilList.add(cariHareketleri);
                }
            }
            m.addAttribute("cariHareketleri", asilList);
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

    @RequestMapping(value = "/SatisYap={idCari}", method = RequestMethod.GET)
    public String SatisYap(Model m, HttpSession session, @PathVariable("idCari") int idCari) {
        if (nameSurname(m, session)) {
            List<Urun> list = urunService.findAll();
            m.addAttribute("urunList", list);
            m.addAttribute("idCari", idCari);
            DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
            Date date = new Date();
            m.addAttribute("tarih", dateFormat.format(date));
            return "SatisYap";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/SatisYap={idCari}", method = RequestMethod.POST)
    public String SatisYapSubmit(Model m, HttpSession session, @PathVariable("idCari") int idCari,
            @RequestParam("aciklama") String aciklama,
            @RequestParam("islemTarihi") String islemTarihi,
            @RequestParam("islemTutari") String islemTutari,
            @RequestParam("Buttons") String Button,
            @RequestParam("urunler") String urunler) {
        if (nameSurname(m, session)) {
            String[] tanim = urunler.split("-");
            int unq = 1;
            for (int i = 1; i <= Integer.parseInt(tanim[0]) * 5; i++) {
                CariHareketleri c = new CariHareketleri();
                c.setIdCari("" + idCari);
                c.setAciklama(aciklama);
                c.setIslemTarihi(islemTarihi);
                c.setIslemTutari(islemTutari);
                c.setUrunAdi(tanim[i]);
                c.setMiktar(tanim[++i].trim());
                c.setKdv(tanim[++i].trim());
                c.setIskonto(tanim[++i].trim());
                c.setGenelToplam(tanim[++i].trim());
                c.setIslemTuru(Button);
                c.setUnq("" + unq);
                unq = 0;
                cariHareketleriService.save(c);
            }
            return "redirect:/CariHesapDetayi=" + idCari;
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/CariDuzenle={idCari}")
    public String CariDuzenle(Model m, HttpSession session, @PathVariable("idCari") int idCari) {
        if (nameSurname(m, session)) {
            Cari c = cariService.findById(idCari);
            m.addAttribute("cariBilgileri", c);
            return "CariDuzenle";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/CariDuzenle={idCari}", method = RequestMethod.POST)
    public String CariDuzenlePost(Model m, HttpSession session, @PathVariable("idCari") int idCari,
            @RequestParam("unvan") String unvan,
            @RequestParam("yetkili") String yetkili,
            @RequestParam("vergiDairesi") String vergiDairesi,
            @RequestParam("vergiDairesiNo") String vergiDairesiNo,
            @RequestParam("ticaretSicilNo") String ticaretSicilNo,
            @RequestParam("adres") String adres,
            @RequestParam("telefon") String telefon,
            @RequestParam("fax") String fax,
            @RequestParam("mail") String mail,
            @RequestParam("bankaAdi") String bankaAdi,
            @RequestParam("sube") String sube,
            @RequestParam("subeNo") String subeNo,
            @RequestParam("hesapNo") String hesapNo,
            @RequestParam("iban") String iban) {
        if (nameSurname(m, session)) {
            Cari c = new Cari();
            c.setIdCari(idCari);
            c.setAdres(adres);
            c.setBankaAdi(bankaAdi);
            c.setFax(fax);
            c.setHesapNo(hesapNo);
            c.setIban(iban);
            c.setMail(mail);
            c.setSube(sube);
            c.setSubeNo(subeNo);
            c.setTelefon(telefon);
            c.setTicaretSicilNo(ticaretSicilNo);
            c.setUnvan(unvan);
            c.setVergiDairesi(vergiDairesi);
            c.setVergiDairesiNo(vergiDairesiNo);
            c.setYetkili(yetkili);
            cariService.update(c);
            return "redirect:CariHesapDetayi=" + idCari;
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

    @RequestMapping(value = "/CariEkle", method = RequestMethod.GET)
    public String CariEkle(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            List<Cari> list = cariService.findAll();
            m.addAttribute("cariList", list);
            return "CariEkle";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/CariSil", method = RequestMethod.POST)
    public String CariSil(Model m, HttpSession session, @RequestParam("cari") String cari) {
        if (nameSurname(m, session)) {
            List<Cari> list = cariService.findByProperty("yetkili", cari);
            for (Cari cari1 : list) {
                cariService.delete(cari1);
            }
            return "redirect:/CariEkle";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/CariEkle", method = RequestMethod.POST)
    public String CariEkle(Model m, HttpSession session,
            @RequestParam("unvan") String unvan,
            @RequestParam("yetkili") String yetkili,
            @RequestParam("vergiDairesi") String vergiDairesi,
            @RequestParam("vergiDairesiNo") String vergiDairesiNo,
            @RequestParam("ticaretSicilNo") String ticaretSicilNo,
            @RequestParam("adres") String adres,
            @RequestParam("telefon") String telefon,
            @RequestParam("fax") String fax,
            @RequestParam("mail") String mail,
            @RequestParam("bankaAdi") String bankaAdi,
            @RequestParam("sube") String sube,
            @RequestParam("subeNo") String subeNo,
            @RequestParam("hesapNo") String hesapNo,
            @RequestParam("iban") String iban) {
        if (nameSurname(m, session)) {
            Cari c = new Cari();
            c.setAdres(adres);
            c.setBankaAdi(bankaAdi);
            c.setFax(fax);
            c.setHesapNo(hesapNo);
            c.setIban(iban);
            c.setMail(mail);
            c.setSube(sube);
            c.setSubeNo(subeNo);
            c.setTelefon(telefon);
            c.setTicaretSicilNo(ticaretSicilNo);
            c.setUnvan(unvan);
            c.setVergiDairesi(vergiDairesi);
            c.setVergiDairesiNo(vergiDairesiNo);
            c.setYetkili(yetkili);
            cariService.save(c);
            return "redirect:/CariEkle";
        } else {
            return "redirect:/";
        }
    }
}
