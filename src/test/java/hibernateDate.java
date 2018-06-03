
import com.stoktakip.dao.CariHareketleriDAOImpl;
import com.stoktakip.domain.CariHareketleri;
import com.stoktakip.util.HibernateUtil;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Elidor
 */
public class hibernateDate {

    public static void main(String[] args) {
//        CariHareketleriDAOImpl tarih = new CariHareketleriDAOImpl();
//        DateFormat dateFormat = new SimpleDateFormat("MM/yyyy");
//        Date date = new Date();
//        System.out.println(dateFormat.format(date));

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createSQLQuery(
                "select * from deed2auv4cn33pxa.carihareketleri s where s.islemTarihi like '%06/2018%'")
                .addEntity(CariHareketleri.class);
        List<CariHareketleri> result = query.list();
        for (CariHareketleri object : result) {
            System.out.println(object.getKar());
        }
    }
}
