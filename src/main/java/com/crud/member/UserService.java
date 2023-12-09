package com.crud.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    UserDAO userDAO;
    public UserVO getUser(UserVO vo){
        return userDAO.getUser(vo);
    }

    public int insertUser(UserVO vo){
        return userDAO.insertUser(vo);
    }
}
