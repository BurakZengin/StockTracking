/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.controller;

import static com.stoktakip.controller.StokController.nameSurname;
import com.stoktakip.domain.Cari;
import com.stoktakip.domain.CariHareketleri;
import com.stoktakip.domain.Kasa;
import com.stoktakip.domain.Stok;
import com.stoktakip.domain.Urun;
import com.stoktakip.domain.User;
import com.stoktakip.service.CariHareketleriService;
import com.stoktakip.service.CariService;
import com.stoktakip.service.KasaService;
import com.stoktakip.service.StokService;
import com.stoktakip.service.UrunService;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;
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
    @Autowired
    private StokService stokService;
    @Autowired
    private KasaService kasaService;

    @RequestMapping(value = "/CariTakip", method = RequestMethod.GET)
    public String CariTakip(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            List<Cari> list = cariService.findAll();
            m.addAttribute("cariList", list);
            return "CariTakip";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/CariHesapDetayi={idCari}", method = RequestMethod.GET)
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

    @RequestMapping(value = "/CariTahsilat={idCari}", method = RequestMethod.GET)
    public String CariTahsilat(Model m, HttpSession session, @PathVariable("idCari") int idCari) {
        if (nameSurname(m, session)) {
            DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
            Date date = new Date();
            m.addAttribute("tarih", dateFormat.format(date));
            List<CariHareketleri> list = cariHareketleriService.findByProperty("idCari", idCari);
            List<CariHareketleri> asilList = new ArrayList<CariHareketleri>();
            for (CariHareketleri cariHareketleri : list) {
                if (cariHareketleri.getUnq().equals("1") && cariHareketleri.getIslemTuru().equals("Borc")) {
                    asilList.add(cariHareketleri);
                }
            }
            m.addAttribute("cariHareketleri", asilList);
            return "CariTahsilat";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/CariTahsilat={idCari}", method = RequestMethod.POST)
    public String CariTahsilatSubmit(Model m, HttpSession session, @PathVariable("idCari") int idCari,
            @RequestParam("islemTarihi") String islemTarihi,
            @RequestParam("aciklama") String aciklama,
            @RequestParam("borcMiktari") String borcMiktari,
            @RequestParam("urunler") String urunler) {
        if (nameSurname(m, session)) {
            User user = (User) session.getAttribute("user");
            String[] idTeam = urunler.split(",");
            for (String idTeam1 : idTeam) {
                if (!idTeam1.equals("0")) {
                    List<CariHareketleri> ch = cariHareketleriService.findByProperty("team", idTeam1);
                    for (CariHareketleri cariHareketleri : ch) {
                        cariHareketleri.setIslemTuru("Borc(Odendi)");
                        cariHareketleriService.update(cariHareketleri);
                        cariHareketleri.setAciklama(aciklama);
                        cariHareketleri.setIslemTarihi(islemTarihi);
                        cariHareketleri.setIslemTuru("Tahsilat");
                        cariHareketleriService.save(cariHareketleri);
                    }
                }
            }
            Kasa k = new Kasa();
            k.setTarih(islemTarihi);
            k.setTip("Giris");
            k.setTutar(borcMiktari);
            k.setAciklama(aciklama);
            k.setYetkili(user.getName() + " " + user.getSurname());
            kasaService.save(k);
            return "redirect:/CariHesapDetayi=" + idCari;
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
            User user = (User) session.getAttribute("user");
            String[] tanim = urunler.split("-");
            int unq = 1;
            Random rand = new Random();
            int random = rand.nextInt();
            for (int i = 1; i <= Integer.parseInt(tanim[0]) * 5; i++) {

                CariHareketleri c = new CariHareketleri();
                Stok s = new Stok();
                c.setIdCari("" + idCari);
                c.setAciklama(aciklama);
                c.setIslemTarihi(islemTarihi);
                c.setIslemTutari(islemTutari);
                String urunAdi = tanim[i];
                c.setUrunAdi(urunAdi);

                String miktar = tanim[++i].trim();
                List<Urun> u = urunService.findByProperty("urunAdi", urunAdi);
                for (Urun urun : u) {
                    int stokAdedi = Integer.parseInt(urun.getStokAdedi());
                    stokAdedi -= Integer.parseInt(miktar);
                    urun.setStokAdedi("" + stokAdedi);
                    urunService.update(urun);
                }

                s.setUrun(urunAdi);
                s.setMiktar(miktar);
                s.setTarih(islemTarihi);
                s.setAciklama(aciklama);
                s.setIslemTuru("Cikis");
                stokService.save(s);

                c.setMiktar(miktar);
                c.setKdv(tanim[++i].trim());
                c.setIskonto(tanim[++i].trim());
                c.setGenelToplam(tanim[++i].trim());
                c.setIslemTuru(Button);
                c.setUnq("" + unq);
                c.setTeam("" + random);
                unq = 0;
                cariHareketleriService.save(c);
            }
            if (!Button.equals("Borc")) {
                Kasa k = new Kasa();
                k.setTarih(islemTarihi);
                k.setTip("Giris");
                k.setTutar(islemTutari);
                k.setAciklama(aciklama);
                k.setYetkili(user.getName() + " " + user.getSurname());
                kasaService.save(k);
            }

            return "redirect:/CariHesapDetayi=" + idCari;
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/CariDuzenle={idCari}", method = RequestMethod.GET)
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

    @RequestMapping(value = "/AlisYap={idCari}", method = RequestMethod.GET)
    public String AlisYap(Model m, HttpSession session, @PathVariable("idCari") int idCari) {
        if (nameSurname(m, session)) {
            List<Urun> list = urunService.findAll();
            m.addAttribute("urunList", list);
            DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
            Date date = new Date();
            m.addAttribute("tarih", dateFormat.format(date));
            return "AlisYap";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/AlisYap={idCari}", method = RequestMethod.POST)
    public String AlisYapSubmit(Model m, HttpSession session, @PathVariable("idCari") String idCari,
            @RequestParam("urunListesi") String urunListesi,
            @RequestParam("islemTarihi") String islemTarihi,
            @RequestParam("alinanMiktar") String alinanMiktar,
            @RequestParam("aciklama") String aciklama,
            @RequestParam("Button") String button,
            @RequestParam("islemTutari") String islemTutari) {
        if (nameSurname(m, session)) {
            User user = (User) session.getAttribute("user");
            CariHareketleri c = new CariHareketleri();
            List<Urun> u = urunService.findByProperty("urunAdi", urunListesi);
            Random rand = new Random();
            int random = rand.nextInt();
            for (Urun urun : u) {
                int yeniStok = Integer.parseInt(urun.getStokAdedi()) + Integer.parseInt(alinanMiktar);
                urun.setStokAdedi("" + yeniStok);
                urunService.update(urun);

                c.setIslemTarihi(islemTarihi);
                c.setAciklama(aciklama);
                c.setIslemTutari(islemTutari);
                c.setUrunAdi(urun.getUrunAdi());
                c.setMiktar(alinanMiktar);
                c.setKdv("8");
                c.setIskonto("0");
                c.setGenelToplam("0");
                c.setIdCari(idCari);
                c.setIslemTuru(button);
                c.setUnq("1");
                c.setTeam("" + random);
                cariHareketleriService.save(c);
                break;
            }

            Stok s = new Stok();
            s.setUrun(urunListesi);
            s.setMiktar(alinanMiktar);
            s.setTarih(islemTarihi);
            s.setAciklama(aciklama);
            s.setIslemTuru("Giris");
            stokService.save(s);
            if (!button.equals("Alacakli")) {
                Kasa k = new Kasa();
                k.setTarih(islemTarihi);
                k.setTip("Cikis");
                k.setTutar(islemTutari);
                k.setAciklama(aciklama);
                k.setYetkili(user.getName() + " " + user.getSurname());
                kasaService.save(k);
            }

            return "redirect:CariHesapDetayi=" + idCari;
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/CariOdeme={idCari}", method = RequestMethod.GET)
    public String CariOdeme(Model m, HttpSession session, @PathVariable("idCari") String idCari) {
        if (nameSurname(m, session)) {
            DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
            Date date = new Date();
            m.addAttribute("tarih", dateFormat.format(date));
            List<CariHareketleri> list = cariHareketleriService.findByProperty("idCari", idCari);
            List<CariHareketleri> asilList = new ArrayList<CariHareketleri>();
            for (CariHareketleri cariHareketleri : list) {
                if (cariHareketleri.getUnq().equals("1") && cariHareketleri.getIslemTuru().equals("Alacakli")) {
                    asilList.add(cariHareketleri);
                }
            }
            m.addAttribute("cariHareketleri", asilList);
            return "CariOdeme";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/CariOdeme={idCari}", method = RequestMethod.POST)
    public String CariOdemeSubmit(Model m, HttpSession session, @PathVariable("idCari") String idCari,
            @RequestParam("islemTarihi") String islemTarihi,
            @RequestParam("aciklama") String aciklama,
            @RequestParam("borcMiktari") String borcMiktari,
            @RequestParam("urunler") String urunler) {
        if (nameSurname(m, session)) {
            User user = (User) session.getAttribute("user");
            String[] idTeam = urunler.split(",");
            for (String idTeam1 : idTeam) {
                if (!idTeam1.equals("0")) {
                    List<CariHareketleri> ch = cariHareketleriService.findByProperty("team", idTeam1);
                    for (CariHareketleri cariHareketleri : ch) {
                        cariHareketleri.setIslemTuru("Alacakli (Odendi)");
                        cariHareketleriService.update(cariHareketleri);
                        cariHareketleri.setAciklama(aciklama);
                        cariHareketleri.setIslemTarihi(islemTarihi);
                        cariHareketleri.setIslemTuru("Odeme");
                        cariHareketleriService.save(cariHareketleri);
                    }
                }
            }
            Kasa k = new Kasa();
            k.setTarih(islemTarihi);
            k.setTip("Cikis");
            k.setTutar(borcMiktari);
            k.setAciklama(aciklama);
            k.setYetkili(user.getName() + " " + user.getSurname());
            kasaService.save(k);
            return "redirect:/CariHesapDetayi=" + idCari;
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
            int idCari = 0;
            List<Cari> list = cariService.findByProperty("yetkili", cari);
            for (Cari cari1 : list) {
                cariService.delete(cari1);
                idCari = cari1.getIdCari();
            }
            List<CariHareketleri> cariHareketList = cariHareketleriService.findByProperty("idCari", "" + idCari);
            for (CariHareketleri cariHareketleri : cariHareketList) {
                cariHareketleriService.delete(cariHareketleri);
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
            c.setAdres(adres.trim());
            c.setBankaAdi(bankaAdi.trim());
            c.setFax(fax.trim());
            c.setHesapNo(hesapNo.trim());
            c.setIban(iban.trim());
            c.setMail(mail.trim());
            c.setSube(sube.trim());
            c.setSubeNo(subeNo.trim());
            c.setTelefon(telefon.trim());
            c.setTicaretSicilNo(ticaretSicilNo.trim());
            c.setUnvan(unvan.trim());
            c.setVergiDairesi(vergiDairesi.trim());
            c.setVergiDairesiNo(vergiDairesiNo.trim());
            c.setYetkili(yetkili.trim());
            cariService.save(c);
            return "redirect:/CariEkle";
        } else {
            return "redirect:/";
        }
    }
}
