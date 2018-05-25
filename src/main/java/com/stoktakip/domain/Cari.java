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
@Table(name = "cari", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"idCari"})})
public class Cari implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idCari", nullable = false, unique = true, length = 11)
    private int idCari;

    @Column(name = "unvan", nullable = false, length = 45)
    private String unvan;

    @Column(name = "yetkili", nullable = false, length = 45)
    private String yetkili;

    @Column(name = "vergiDairesi", nullable = false, length = 45)
    private String vergiDairesi;

    @Column(name = "vergiDairesiNo", nullable = false, length = 45)
    private String vergiDairesiNo;

    @Column(name = "ticaretSicilNo", nullable = false, length = 45)
    private String ticaretSicilNo;

    @Column(name = "adres", nullable = false, length = 45)
    private String adres;

    @Column(name = "telefon", nullable = false, length = 45)
    private String telefon;

    @Column(name = "fax", nullable = false, length = 45)
    private String fax;

    @Column(name = "mail", nullable = false, length = 45)
    private String mail;

    @Column(name = "bankaAdi", nullable = false, length = 45)
    private String bankaAdi;

    @Column(name = "sube", nullable = false, length = 45)
    private String sube;

    @Column(name = "subeNo", nullable = false, length = 45)
    private String subeNo;

    @Column(name = "hesapNo", nullable = false, length = 45)
    private String hesapNo;

    @Column(name = "iban", nullable = false, length = 45)
    private String iban;

    public int getIdCari() {
        return idCari;
    }

    public void setIdCari(int idCari) {
        this.idCari = idCari;
    }

    public String getUnvan() {
        return unvan;
    }

    public void setUnvan(String unvan) {
        this.unvan = unvan;
    }

    public String getYetkili() {
        return yetkili;
    }

    public void setYetkili(String yetkili) {
        this.yetkili = yetkili;
    }

    public String getVergiDairesi() {
        return vergiDairesi;
    }

    public void setVergiDairesi(String vergiDairesi) {
        this.vergiDairesi = vergiDairesi;
    }

    public String getVergiDairesiNo() {
        return vergiDairesiNo;
    }

    public void setVergiDairesiNo(String vergiDairesiNo) {
        this.vergiDairesiNo = vergiDairesiNo;
    }

    public String getTicaretSicilNo() {
        return ticaretSicilNo;
    }

    public void setTicaretSicilNo(String ticaretSicilNo) {
        this.ticaretSicilNo = ticaretSicilNo;
    }

    public String getAdres() {
        return adres;
    }

    public void setAdres(String adres) {
        this.adres = adres;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getBankaAdi() {
        return bankaAdi;
    }

    public void setBankaAdi(String bankaAdi) {
        this.bankaAdi = bankaAdi;
    }

    public String getSube() {
        return sube;
    }

    public void setSube(String sube) {
        this.sube = sube;
    }

    public String getSubeNo() {
        return subeNo;
    }

    public void setSubeNo(String subeNo) {
        this.subeNo = subeNo;
    }

    public String getHesapNo() {
        return hesapNo;
    }

    public void setHesapNo(String hesapNo) {
        this.hesapNo = hesapNo;
    }

    public String getIban() {
        return iban;
    }

    public void setIban(String iban) {
        this.iban = iban;
    }

}
