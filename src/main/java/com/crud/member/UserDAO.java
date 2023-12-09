package com.crud.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
    @Autowired
    SqlSessionTemplate sqlSession;

    public int insertUser(UserVO vo) {
        return sqlSession.update("User.insertUser",vo);
    }

    public UserVO getUser(UserVO vo){
        return sqlSession.selectOne("User.getUser", vo);
    }
}
