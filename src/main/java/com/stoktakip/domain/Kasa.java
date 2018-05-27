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
@Table(name = "kasa", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"idKasa"})})
public class Kasa implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idKasa", nullable = false, unique = true, length = 11)
    private int idKasa;

    @Column(name = "tarih", nullable = false, length = 45)
    private String tarih;

    @Column(name = "tip", nullable = false, length = 45)
    private String tip;

    @Column(name = "tutar", nullable = false, length = 45)
    private String tutar;

    @Column(name = "aciklama", nullable = false, length = 200)
    private String aciklama;

    @Column(name = "yetkili", nullable = false, length = 45)
    private String yetkili;

    public int getIdKasa() {
        return idKasa;
    }

    public void setIdKasa(int idKasa) {
        this.idKasa = idKasa;
    }

    public String getTarih() {
        return tarih;
    }

    public void setTarih(String tarih) {
        this.tarih = tarih;
    }

    public String getTip() {
        return tip;
    }

    public void setTip(String tip) {
        this.tip = tip;
    }

    public String getTutar() {
        return tutar;
    }

    public void setTutar(String tutar) {
        this.tutar = tutar;
    }

    public String getAciklama() {
        return aciklama;
    }

    public void setAciklama(String aciklama) {
        this.aciklama = aciklama;
    }

    public String getYetkili() {
        return yetkili;
    }

    public void setYetkili(String yetkili) {
        this.yetkili = yetkili;
    }
}
