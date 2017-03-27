package org.smart4j.chapter2.service;

import org.smart4j.chapter2.helper.DatabaseHelper;
import org.smart4j.chapter2.model.User;
import org.smart4j.chapter2.util.StringUtil;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by zhouj on 17/3/27.
 */
public class LoginService {

    public User getUserForLogin(String username,String password){

        StringBuffer sql=new StringBuffer();

        sql.append("select * from user where 1=1 ");

        if(StringUtil.isNotEmpty(username)) {
            sql.append(" and username = ? ");
        }

        if(StringUtil.isNotEmpty(password)) {
            sql.append(" and password = ? ");
        }

        return DatabaseHelper.queryEntity(User.class, sql.toString(), new Object[] {username,password});
    }
}

