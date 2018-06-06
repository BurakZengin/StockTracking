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
@Table(name = "carihareketleri", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"idcarihareketleri"})})
public class CariHareketleri implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idcarihareketleri", nullable = false, unique = true, length = 11)
    private int idcarihareketleri;

    @Column(name = "islemTarihi", nullable = false, length = 45)
    private String islemTarihi;

    @Column(name = "aciklama", nullable = false, length = 300)
    private String aciklama;

    @Column(name = "islemTutari", nullable = false, length = 45)
    private String islemTutari;

    @Column(name = "urunAdi", nullable = false, length = 45)
    private String urunAdi;

    @Column(name = "miktar", nullable = false, length = 45)
    private String miktar;

    @Column(name = "birimFiyati", nullable = false, length = 45)
    private String birimFiyati;

    @Column(name = "kdv", nullable = false, length = 45)
    private String kdv;

    @Column(name = "iskonto", nullable = false, length = 45)
    private String iskonto;

    @Column(name = "islemTuru", nullable = false, length = 45)
    private String islemTuru;

    @Column(name = "unq", nullable = false, length = 45)
    private String unq;

    @Column(name = "team", nullable = false, length = 45)
    private String team;

    @Column(name = "kar", nullable = false, length = 45)
    private String kar;

    public String getKar() {
        return kar;
    }

    public void setKar(String kar) {
        this.kar = kar;
    }

    public String getBirimFiyati() {
        return birimFiyati;
    }

    public void setBirimFiyati(String birimFiyati) {
        this.birimFiyati = birimFiyati;
    }

    public String getTeam() {
        return team;
    }

    public void setTeam(String team) {
        this.team = team;
    }

    public String getUnq() {
        return unq;
    }

    public void setUnq(String unq) {
        this.unq = unq;
    }

    public String getIslemTuru() {
        return islemTuru;
    }

    public void setIslemTuru(String islemTuru) {
        this.islemTuru = islemTuru;
    }

    public int getIdcarihareketleri() {
        return idcarihareketleri;
    }

    public void setIdcarihareketleri(int idcarihareketleri) {
        this.idcarihareketleri = idcarihareketleri;
    }

    public String getIslemTarihi() {
        return islemTarihi;
    }

    public void setIslemTarihi(String islemTarihi) {
        this.islemTarihi = islemTarihi;
    }

    public String getAciklama() {
        return aciklama;
    }

    public void setAciklama(String aciklama) {
        this.aciklama = aciklama;
    }

    public String getIslemTutari() {
        return islemTutari;
    }

    public void setIslemTutari(String islemTutari) {
        this.islemTutari = islemTutari;
    }

    public String getUrunAdi() {
        return urunAdi;
    }

    public void setUrunAdi(String urunAdi) {
        this.urunAdi = urunAdi;
    }

    public String getMiktar() {
        return miktar;
    }

    public void setMiktar(String miktar) {
        this.miktar = miktar;
    }

    public String getKdv() {
        return kdv;
    }

    public void setKdv(String kdv) {
        this.kdv = kdv;
    }

    public String getIskonto() {
        return iskonto;
    }

    public void setIskonto(String iskonto) {
        this.iskonto = iskonto;
    }

    public String getGenelToplam() {
        return genelToplam;
    }

    public void setGenelToplam(String genelToplam) {
        this.genelToplam = genelToplam;
    }

    public String getIdCari() {
        return idCari;
    }

    public void setIdCari(String idCari) {
        this.idCari = idCari;
    }

    @Column(name = "genelToplam", nullable = false, length = 45)
    private String genelToplam;

    @Column(name = "idCari", nullable = false, length = 45)
    private String idCari;
}
