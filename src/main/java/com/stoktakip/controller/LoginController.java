/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.controller;

import com.stoktakip.command.LoginCommand;
import com.stoktakip.domain.User;
import com.stoktakip.service.UserService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Elidor
 */
@Controller
public class LoginController {

    @Autowired
    private UserService userService;
    
    @RequestMapping(value = "/")
    public String Login(Model m) {
        m.addAttribute("command", new LoginCommand());
        return "Login";
    }
    
    @RequestMapping(value = "/Login", method = RequestMethod.POST)
    public String LoginHandle(@ModelAttribute("command") LoginCommand cmd, Model m, HttpSession session) {
        User loggedInUser = userService.login(cmd.getUsername(), cmd.getPassword());
        if (loggedInUser == null) {
            //FAILED
            m.addAttribute("err", "ex");
            return "Login";
        } else {
            //SUCCESS
            addUserInSession(loggedInUser, session);
            return "redirect:Anasayfa";
        }
    }

    @RequestMapping(value = "/Login", method = RequestMethod.GET)
    public String GetLogin(@ModelAttribute("command") LoginCommand cmd, Model m, HttpSession session) {
        m.addAttribute("command", new LoginCommand());
        if (HomeController.nameSurname(m, session)) {
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

    @RequestMapping(value = {"/Forgot"})
    public String Forgot(Model m, HttpSession session) {
        return "Forgot";
    }

    private void addUserInSession(User u, HttpSession session) {
        session.setAttribute("user", u);
        session.setAttribute("userId", u.getId());
    }
}
