package com.demo.test;

import java.util.ArrayList;

import com.demo.dao.impl.TestUserDaoImpl;
import com.demo.entity.Dept;

public class Test {
	public static void main(String[] args) {
		TestUserDaoImpl udp = new TestUserDaoImpl();
		/*ArrayList<Dept> list = (ArrayList<Dept>) udp.findAll();
		for (Dept dept : list) {
			System.out.println(dept.getDname());
		}*/
		//System.out.println(udp.delete(40));
		/*Dept dept = new Dept(40,"bbb","nj23");
		//udp.add(dept);
		System.out.println(udp.update(dept));*/
	}
}
