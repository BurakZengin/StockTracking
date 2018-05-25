
import com.stoktakip.domain.Kategoriler;
import com.stoktakip.service.KategorilerServiceImpl;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Elidor
 */
public class hibernateFindAllKategoriler {

    public static void main(String args[]) {
        KategorilerServiceImpl ksi = new KategorilerServiceImpl();
        List<Kategoriler> models = ksi.findAll();
        for (Kategoriler model : models) {
            System.out.println(model.getKategori());
        }
    }
}
