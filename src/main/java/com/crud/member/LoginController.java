package com.crud.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/login")
public class LoginController {
    @Autowired
    UserService service;

    @RequestMapping(value ="/login", method = RequestMethod.GET)
    public String login(){
        return "login";
    }
    @RequestMapping(value = "/loginOk", method = RequestMethod.POST)
    public String loginCheck(HttpSession session, UserVO vo) {
        String returnURL = "";
        if(session.getAttribute("login")!=null){
            session.removeAttribute("login");
        }

        UserVO loginvo = service.getUser(vo);
        if(loginvo != null){
            System.out.println("로그인 성공!");
            session.setAttribute("login", loginvo);
            returnURL = "redirect:/board/list";
        }
        else{
            System.out.println("로그인 실패!");
            returnURL = "redirect:/login/login";
        }
        return returnURL;
    }
    @RequestMapping(value="/join", method =RequestMethod.GET)
    public String join(){
        return "join";
    }
    @RequestMapping(value="/joinok", method =RequestMethod.POST)
    public String joinOK(UserVO vo){
        if(service.insertUser(vo) ==0)
            System.out.println("사용자 추가 실패");
        else
            System.out.println("사용자 추가 성공!!!");
        return "redirect:login";
    }


    @RequestMapping(value= "/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/login/login";
    }
}
