
import com.stoktakip.dao.UserDAOImpl;
import com.stoktakip.domain.User;
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
public class hibernateFindByProperty {

    public static void main(String args[]) {

        UserDAOImpl userDAOImpl = new UserDAOImpl();
        List<User> userList = userDAOImpl.findByProperty("username", "burak");
        for (User user : userList) {
            System.out.println(user.getId());
        }

        System.out.println("Successfully Found");
    }
}
