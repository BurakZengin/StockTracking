
import com.stoktakip.dao.KategorilerDAOImpl;
import com.stoktakip.domain.Kategoriler;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Elidor
 */
public class hibernateSaveKategoriler {

    public static void main(String[] args) {

        KategorilerDAOImpl urunDAOImpl = new KategorilerDAOImpl();
        Kategoriler kategoriler = new Kategoriler();
        kategoriler.setKategori("Sosssssssss");
        urunDAOImpl.save(kategoriler);

        System.out.println("Successfully Added");
    }
}
