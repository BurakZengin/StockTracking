
import com.stoktakip.dao.UrunDAOImpl;
import com.stoktakip.domain.Urun;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Elidor
 */
public class hibernateSaveUrun {

    public static void main(String[] args) {

        UrunDAOImpl urunDAOImpl = new UrunDAOImpl();
        Urun urun = new Urun();
        urun.setKategori("Kahve");
        urun.setUrunAdi("yarak");
        urun.setAlisFiyati("100");
        urun.setSatisFiyati("200");
        urun.setStokAdedi("500");
        urun.setKdvOrani("8");
        urun.setBirim("kg");
        urunDAOImpl.save(urun);

        System.out.println("Successfully Added");
    }
}
