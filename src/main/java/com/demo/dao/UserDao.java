package com.demo.dao;


import java.util.List;

import com.demo.entity.Dept;

/**
 * ���ݷ��ʲ�ӿ�
 * @author Administrator
 *
 */
public interface UserDao {
	public List<Dept> findAll();//��ѯ����
	public boolean delete(int id);//ɾ��
	public void add(Dept dept);//���
	public boolean update(Dept dept);//�޸�
}
