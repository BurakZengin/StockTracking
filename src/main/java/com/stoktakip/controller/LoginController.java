/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.controller;

import com.stoktakip.domain.User;
import com.stoktakip.service.MailService;
import com.stoktakip.service.UserService;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Elidor
 */
@Controller
public class LoginController {

    @Autowired
    private UserService userService;
    @Autowired
    private MailService mailService;

    @RequestMapping(value = "/")
    public String Login(Model m) {
        return "Login";
    }

    @RequestMapping(value = "/Login", method = RequestMethod.POST)
    public String LoginHandle(Model m, HttpSession session,
            @RequestParam("username") String username,
            @RequestParam("password") String password) {
        User loggedInUser = userService.login(username, password);
        if (loggedInUser == null) {
            //FAILED
            m.addAttribute("err", "ex");
            return "Login";
        } else {
            //SUCCESS
            addUserInSession(loggedInUser, session);
            if (loggedInUser.getRoles().equals("1")) {
                return "redirect:Anasayfa";
            } else {
                return "redirect:StokTakp";
            }
        }
    }

    @RequestMapping(value = "/Login", method = RequestMethod.GET)
    public String GetLogin(Model m, HttpSession session) {
        if (nameSurname(m, session)) {
            return "redirect:Anasayfa";
        } else {
            return "Login";
        }
    }

    @RequestMapping(value = "/Logout")
    public String Logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }

    @RequestMapping(value = {"/Forgot"}, method = RequestMethod.GET)
    public String Forgot(Model m, HttpSession session) {
        return "Forgot";
    }

    @RequestMapping(value = {"/Forgot"}, method = RequestMethod.POST)
    public String ForgotSubmit(Model m, HttpSession session,
            @RequestParam("username") String username) {
        List<User> u = userService.findByProperty("username", username);
        if (u.size() <= 0) {
            m.addAttribute("err", "1");
            return "Forgot";
        } else {
            int randomPIN = (int) (Math.random() * 9000) + 1000;
            for (User user : u) {
                user.setPassword("" + randomPIN);
                userService.update(user);
                mailService.sendEmail(user, randomPIN);
                m.addAttribute("mail", "basarili");
                break;
            }
            return "redirect:/";
        }
    }

    @RequestMapping(value = {"/Kayit"})
    public String Kayit(Model m, HttpSession session) {
        return "Kayit";
    }

    @RequestMapping(value = {"/Kayit"}, method = RequestMethod.POST)
    public String KayitSubmit(Model m, HttpSession session,
            @RequestParam("username") String username,
            @RequestParam("name") String name,
            @RequestParam("surname") String surname,
            @RequestParam("password") String password,
            @RequestParam("rePassword") String rePassword,
            @RequestParam("adminPassword") String adminPassword,
            @RequestParam("mail") String mail,
            @RequestParam("role") String role) {

        List<User> userList = userService.findAll();
        boolean bool = false;
        if (password.equals(rePassword)) {
            for (User user : userList) {
                if (user.getUsername().equals(username)) {
                    m.addAttribute("err", "1");
                    return "Kayit";
                }
                if (user.getRoles().equals("1") && user.getPassword().equals(adminPassword)) {
                    bool = true;
                }
            }
            if (bool) {
                User u = new User();
                u.setName(name);
                u.setPassword(password);
                if (role.equals("Admin")) {
                    u.setRoles("1");
                } else {
                    u.setRoles("0");
                }
                u.setSurname(surname);
                u.setUsername(username);
                u.setMail(mail);
                userService.save(u);
            } else {
                m.addAttribute("err", "2");
                return "Kayit";
            }
        } else {
            m.addAttribute("err", "3");
            return "Kayit";
        }
        return "redirect:/";
    }

    private void addUserInSession(User u, HttpSession session) {
        session.setAttribute("user", u);
        session.setAttribute("userId", u.getId());
    }

    public boolean nameSurname(Model m, HttpSession session) {
        User u = (User) session.getAttribute("user");
        if (u == null) {
            return false;
        } else {
            m.addAttribute("role", u.getRoles());
            m.addAttribute("name", u.getName() + " ");
            m.addAttribute("surname", u.getSurname());
            return true;
        }
    }
}
