/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.dao;

import com.stoktakip.domain.Kasa;
import java.util.List;

/**
 *
 * @author Elidor
 */
public interface KasaDAO {

    public void save(Kasa u);

    public void update(Kasa u);

    public void delete(Kasa u);

    public Kasa findById(Integer userId);

    public List<Kasa> findAll();

    public List<Kasa> findByProperty(String propName, Object propValue);
}
