/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.dao;

import com.stoktakip.domain.CariHareketleri;
import java.util.List;

/**
 *
 * @author Elidor
 */
public interface CariHareketleriDAO {

    public void save(CariHareketleri c);

    public void update(CariHareketleri c);

    public void delete(CariHareketleri c);

    public CariHareketleri findById(Integer cariId);

    public List<CariHareketleri> findAll();

    public List<CariHareketleri> findByProperty(String propName, Object propValue);

}
