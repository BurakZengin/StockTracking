/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.service;

import com.stoktakip.domain.Cari;
import java.util.List;

/**
 *
 * @author Elidor
 */
public interface CariService {

    public void save(Cari u);

    public void update(Cari u);

    public void delete(Cari u);

    public Cari findById(Integer userId);

    public List<Cari> findAll();

    public List<Cari> findByProperty(String propName, Object propValue);
}
