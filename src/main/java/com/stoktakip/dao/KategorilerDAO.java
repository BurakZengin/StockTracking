/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.dao;

import com.stoktakip.domain.Kategoriler;
import java.util.List;

/**
 *
 * @author Elidor
 */
public interface KategorilerDAO {

    public void save(Kategoriler u);

    public void delete(Kategoriler u);

    public Kategoriler findById(Integer kategoriId);

    public List<Kategoriler> findAll();

    public List<Kategoriler> findByProperty(String propName, Object propValue);
}
