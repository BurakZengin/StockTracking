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
@Table(name = "urun", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"idUrun"})})
public class Urun implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idUrun", unique = true, nullable = false, length = 11)
    private int idUrun;

    @Column(name = "kategori", nullable = false, length = 45)
    private String kategori;

    @Column(name = "urunAdi", nullable = false, length = 45)
    private String urunAdi;

    @Column(name = "alisFiyati", nullable = false, length = 45)
    private String alisFiyati;

    @Column(name = "satisFiyati", nullable = false, length = 45)
    private String satisFiyati;

    @Column(name = "stokAdedi", nullable = false, length = 45)
    private String stokAdedi;

    @Column(name = "kdvOrani", nullable = false, length = 45)
    private String kdvOrani;

    @Column(name = "birim", nullable = false, length = 45)
    private String birim;

    public int getIdUrun() {
        return idUrun;
    }

    public void setIdUrun(int idUrun) {
        this.idUrun = idUrun;
    }

    public String getKategori() {
        return kategori;
    }

    public void setKategori(String kategori) {
        this.kategori = kategori;
    }

    public String getUrunAdi() {
        return urunAdi;
    }

    public void setUrunAdi(String urunAdi) {
        this.urunAdi = urunAdi;
    }

    public String getAlisFiyati() {
        return alisFiyati;
    }

    public void setAlisFiyati(String alisFiyati) {
        this.alisFiyati = alisFiyati;
    }

    public String getSatisFiyati() {
        return satisFiyati;
    }

    public void setSatisFiyati(String satisFiyati) {
        this.satisFiyati = satisFiyati;
    }

    public String getStokAdedi() {
        return stokAdedi;
    }

    public void setStokAdedi(String stokAdedi) {
        this.stokAdedi = stokAdedi;
    }

    public String getKdvOrani() {
        return kdvOrani;
    }

    public void setKdvOrani(String kdvOrani) {
        this.kdvOrani = kdvOrani;
    }

    public String getBirim() {
        return birim;
    }

    public void setBirim(String birim) {
        this.birim = birim;
    }

}
