/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.controller;

import static com.stoktakip.controller.StokController.nameSurname;
import com.stoktakip.domain.Cari;
import com.stoktakip.domain.CariHareketleri;
import com.stoktakip.service.CariHareketleriService;
import com.stoktakip.service.CariService;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Elidor
 */
@Controller
public class FaturaController {

    @Autowired
    private CariHareketleriService cariHareketleriService;
    @Autowired
    private CariService cariService;

    @RequestMapping(value = "/Fatura", method = RequestMethod.GET)
    public String Fatura(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            List<CariHareketleri> asilList = new ArrayList<CariHareketleri>();
            List<CariHareketleri> cari = cariHareketleriService.findAll();
            List<Cari> cariBilgi = cariService.findAll();
            for (CariHareketleri cariHareketleri : cari) {
                if (cariHareketleri.getUnq().equals("1")) {
                    if (cariHareketleri.getIslemTuru().equals("Satis") || cariHareketleri.getIslemTuru().equals("Alis")) {
                        for (Cari cari1 : cariBilgi) {
                            if (cari1.getIdCari() == Integer.parseInt(cariHareketleri.getIdCari())) {
                                cariHareketleri.setIskonto(cari1.getUnvan());
                                cariHareketleri.setKdv(cari1.getYetkili());
                            }
                        }
                        asilList.add(cariHareketleri);
                    } else if (cariHareketleri.getIslemTuru().equals("Borc (Odendi)")) {
                        for (Cari cari1 : cariBilgi) {
                            if (cari1.getIdCari() == Integer.parseInt(cariHareketleri.getIdCari())) {
                                cariHareketleri.setIskonto(cari1.getUnvan());
                                cariHareketleri.setKdv(cari1.getYetkili());
                            }
                        }
                        cariHareketleri.setIslemTuru("Satis");
                        asilList.add(cariHareketleri);
                    } else if (cariHareketleri.getIslemTuru().equals("Alacakli (Odendi)")) {
                        for (Cari cari1 : cariBilgi) {
                            if (cari1.getIdCari() == Integer.parseInt(cariHareketleri.getIdCari())) {
                                cariHareketleri.setIskonto(cari1.getUnvan());
                                cariHareketleri.setKdv(cari1.getYetkili());
                            }
                        }
                        cariHareketleri.setIslemTuru("Alis");
                        asilList.add(cariHareketleri);
                    }
                }
            }

            m.addAttribute("alisSatis", asilList);
            return "Fatura";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/FaturaDetay={idCari}={urun}", method = RequestMethod.GET)
    public String FaturaDetay(Model m, HttpSession session, @PathVariable("idCari") int idCari, @PathVariable("urun") int urun) {
        if (nameSurname(m, session)) {
            Cari u = cariService.findById(idCari);
            m.addAttribute("cariBilgileri", u);
            List<CariHareketleri> urunler = cariHareketleriService.findByProperty("team", urun);
            List<CariHareketleri> asilList = new ArrayList<CariHareketleri>();
            for (CariHareketleri cariHareketleri : urunler) {
                if (cariHareketleri.getIslemTuru().equals("Satis") || cariHareketleri.getIslemTuru().equals("Alis")
                        || cariHareketleri.getIslemTuru().equals("Tahsilat") || cariHareketleri.getIslemTuru().equals("Odeme")) {
                    asilList.add(cariHareketleri);
                } 
            }
            m.addAttribute("urunler", asilList);
            return "FaturaDetay";
        } else {
            return "redirect:/";
        }
    }
}
