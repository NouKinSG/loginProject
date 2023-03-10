package com.xiaojinSG.mapper;

/*
*
* 用户接口类
*
* */

import com.xiaojinSG.entity.User;

public interface UserMapper {

    public User queryUserByName(String userName); // 接口名字与UserMapper.xml映射id保持一致，放回值类型与resultType="main.java.com.xiaojinSG.entity.User"保持一致即User类

}
