package com.demo.dao;


import java.util.List;

import com.demo.entity.Dept;

/**
 * 数据访问层接口
 * @author Administrator
 *
 */
public interface UserDao {
	public List<Dept> findAll();//查询所有
	public boolean delete(int id);//删除
	public void add(Dept dept);//添加
	public boolean update(Dept dept);//修改
}
