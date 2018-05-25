
import com.stoktakip.dao.StokDAOImpl;
import com.stoktakip.dao.UrunDAOImpl;
import com.stoktakip.domain.Stok;
import com.stoktakip.domain.Urun;
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
public class hibernateFindByIdUrun {

    public static void main(String args[]) {

        StokDAOImpl userDAOImpl = new StokDAOImpl();
        List<Stok> userList = userDAOImpl.findByProperty("urun", "asdad");
        for (Stok user : userList) {
            System.out.println(user.getUrun());
        }

        System.out.println("Successfully Found");
    }
}
