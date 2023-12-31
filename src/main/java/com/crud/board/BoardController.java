package com.crud.board;

import com.crud.member.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;


@Controller
public class BoardController {
    @Autowired
    BoardService boardService;
    @RequestMapping(value ="/")
    public String home(){
        return "home";
    }
    @RequestMapping(value = "/board/list", method = RequestMethod.GET)
    public String boardlist(Model model, HttpSession session) {
        UserVO user = (UserVO) session.getAttribute("login");
        if (user != null) {
            model.addAttribute("list", boardService.getBoardListByUser(user.getUserid()));
        } else {

            return "redirect:/login/login";
        }
        return "list";
    }
    @RequestMapping(value = "/board/add", method = RequestMethod.GET)
    public String addPost(){
        return "addpostform";
    }
    @RequestMapping(value = "/board/addok", method =RequestMethod.POST)
    public String addPostOK(BoardVO vo, HttpSession session) {
        UserVO user = (UserVO) session.getAttribute("login");
        if (user != null) {
            vo.setWriter(user.getUserid()); // Set the writer field
            if (boardService.insertBoard(vo) == 0) {
                System.out.println("데이터 추가 실패");
            } else {
                System.out.println("데이터 추가 성공!!!");
            }
        } else {
            // Handle not logged-in case
            return "redirect:/login/login";
        }
        return "redirect:list";
    }
    @RequestMapping(value = "/board/editform/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model) {
        BoardVO boardVO = boardService.getBoard(id);
        model.addAttribute("boardVO", boardVO);
        return "editform";
    }
    @RequestMapping(value = "/board/editok", method = RequestMethod.POST)
    public String editPostOk(BoardVO vo) {
        if(boardService.updateBoard(vo) == 0)
            System.out.println("데이터 수정 실패 ");
        else
            System.out.println("데이터 수정 성공!!!");
        return "redirect:list" ;
    }
    @RequestMapping(value = "/board/view/{id}", method = RequestMethod.GET)
    public String view(@PathVariable("id") int id, Model model){
        BoardVO boardVO = boardService.getBoard(id);
        model.addAttribute("boardVO", boardVO);
        return "view";
    }

    @RequestMapping(value = "board/deleteok/{id}", method = RequestMethod.GET)
    public String deletePostOk(@PathVariable("id") int id) {
        if(boardService.deleteBoard(id)== 0)
            System.out.println("데이터 삭제 실패 ");
        else
            System.out.println("데이터 삭제 성공!!!");
        return "redirect:../list";
    }
}
