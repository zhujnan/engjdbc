package com.demo.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.dao.UserDao;
import com.demo.entity.Dept;
import com.demo.util.ConnectionUtil;
import com.mysql.jdbc.PreparedStatement;

public class UserDaoImpl implements UserDao{
	private static final String find = 
			"select * from dept";
	public List<Dept> findAll() {
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		List<Dept> list = null;
		try {
			conn = ConnectionUtil.openConnection();
			pst = (PreparedStatement) conn.prepareStatement(find);
			 list = new ArrayList<Dept>();
			rs = pst.executeQuery();
			while(rs.next()){
				Dept dept = new Dept();
				dept.setDeptno(rs.getInt(1));
				dept.setDname(rs.getString(2));
				dept.setLoc(rs.getString(3));
				list.add(dept);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean delete(int id) {
	String deleteSql = "delete from dept where deptno = ?";
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		//List<Dept> list = null;
		boolean bool = false;
		try {
			conn = ConnectionUtil.openConnection();
			pst = (PreparedStatement) conn.prepareStatement(deleteSql);
			pst.setObject(1, id);
			int n = pst.executeUpdate();
			bool = n>=1?true:false;
			// list = new ArrayList<Dept>();
			//rs = pst.executeQuery();
			/*while(rs.next()){
				Dept dept = new Dept();
				dept.setDeptno(rs.getInt(1));
				dept.setDname(rs.getString(2));
				dept.setLoc(rs.getString(3));
				list.add(dept);
			}*/
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bool;
	}

	@Override
	public void add(Dept dept) {
		String addSql = "insert into dept values(?,?,?)";
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			conn = ConnectionUtil.openConnection();
			pst = (PreparedStatement) conn.prepareStatement(addSql);
			pst.setObject(1, dept.getDeptno());
			pst.setObject(2, dept.getDname());
			pst.setObject(3, dept.getLoc());
			int  n = pst.executeUpdate();//执行插入
			 if(n>=1){
				 System.out.println("插入成功");
			 }else{
				 System.out.println("插入失败");
			 }
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public boolean update(Dept dept) {
		String updateSql = "update dept set dname = ? , loc = ? where deptno = ?";
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			conn = ConnectionUtil.openConnection();
			pst = (PreparedStatement) conn.prepareStatement(updateSql);
			pst.setObject(1, dept.getDname());
			pst.setObject(2, dept.getLoc());
			pst.setObject(3, dept.getDeptno());
			int  n = pst.executeUpdate();//执行修改
			 if(n>=1){
				 System.out.println("修改成功");
				 return true;
			 }else{
				 System.out.println("修改失败");
			 }
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}
