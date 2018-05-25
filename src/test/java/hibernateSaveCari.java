
import com.stoktakip.dao.CariDAOImpl;
import com.stoktakip.domain.Cari;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Elidor
 */
public class hibernateSaveCari {

    public static void main(String[] args) {

        CariDAOImpl urunDAOImpl = new CariDAOImpl();
        Cari u = new Cari();
        u.setAdres("as");
        u.setBankaAdi("asd");
        u.setFax("asd");
        u.setHesapNo("Asda");
        u.setIban("asdas");
        u.setMail("qweeqw");
        u.setSube("wqeqweqw");
        u.setSubeNo("Qwqew");
        u.setTelefon("3233");
        u.setTicaretSicilNo("1313");
        u.setUnvan("aesase");
        u.setVergiDairesi("qweqwewqq");
        u.setVergiDairesiNo("2133");
        u.setYetkili("wqeweqeqw");
        urunDAOImpl.save(u);
        System.out.println("Successfully Added");
    }
}
