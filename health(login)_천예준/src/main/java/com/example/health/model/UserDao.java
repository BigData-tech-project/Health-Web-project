package com.example.health.model;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface UserDao {
    @Select(value= "select ")
	int insertUser(UserVo user);

    UserVo selectUserById(@Param("id") String id);

    int updateUser(UserVo user);

    int deleteUser(@Param("id") String id);
}
