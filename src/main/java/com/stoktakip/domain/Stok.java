/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.domain;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 *
 * @author Elidor
 */
@Entity
@Table(name = "stokhareketleri", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"idstokHareketleri"})})
public class Stok implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idstokHareketleri", unique = true, nullable = false, length = 11)
    private int idstokHareketleri;

    @Column(name = "urun", nullable = false, length = 45)
    private String urun;

    @Column(name = "miktar", nullable = false, length = 45)
    private String miktar;

    @Column(name = "tarih", nullable = false, length = 45)
    private String tarih;

    @Column(name = "aciklama", nullable = false, length = 100)
    private String aciklama;
    
    @Column(name = "islemTuru", nullable = false, length = 45)
    private String islemTuru;

    public String getIslemTuru() {
        return islemTuru;
    }

    public void setIslemTuru(String islemTuru) {
        this.islemTuru = islemTuru;
    }
    
    public int getIdstokHareketleri() {
        return idstokHareketleri;
    }

    public void setIdstokHareketleri(int idstokHareketleri) {
        this.idstokHareketleri = idstokHareketleri;
    }

    public String getUrun() {
        return urun;
    }

    public void setUrun(String urun) {
        this.urun = urun;
    }

    public String getMiktar() {
        return miktar;
    }

    public void setMiktar(String miktar) {
        this.miktar = miktar;
    }

    public String getTarih() {
        return tarih;
    }

    public void setTarih(String tarih) {
        this.tarih = tarih;
    }

    public String getAciklama() {
        return aciklama;
    }

    public void setAciklama(String aciklama) {
        this.aciklama = aciklama;
    }
}
