package com.demo.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import com.demo.dao.UserDao;
import com.demo.entity.Dept;
import com.demo.util.ConnectionUtil;
import com.mysql.jdbc.PreparedStatement;

public class TestUserDaoImpl {
	UserDao ud = new UserDaoImpl();
	@Test
	public void findAll() {
	
		}
	@Test
	public void delete() {
		Assert.assertEquals(true, ud.delete(40));	
	}

	public void add(Dept dept) {
		
	}
	@Test
	public void update() {
		Dept dept = new Dept(30,"sales","Dallas");
		Assert.assertEquals(true, ud.update(dept));
	}

}
