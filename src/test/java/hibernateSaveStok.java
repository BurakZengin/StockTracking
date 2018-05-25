
import com.stoktakip.dao.StokDAOImpl;
import com.stoktakip.domain.Stok;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Elidor
 */
public class hibernateSaveStok {

    public static void main(String[] args) {

        StokDAOImpl urunDAOImpl = new StokDAOImpl();
        Stok s = new Stok();
        s.setMiktar("10");
        s.setAciklama("Urun Eklenirken Girilen Stok");
        s.setTarih("19/09/1996");
        s.setUrun("kAhve");
        urunDAOImpl.save(s);

        System.out.println("Successfully Added");
    }
}
