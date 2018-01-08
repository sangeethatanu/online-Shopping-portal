package com.DaoImpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Cart;
import com.model.Orders;

@Repository("orderDaoImpl")
public class OrdersDaoImpl implements OrderDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public OrdersDaoImpl()
	{
		this.sessionFactory=sessionFactory;
	}

	//@Transactional
		public void insertOrder(Orders order)
		{
		Session session=sessionFactory.openSession();
		session.persist(order);
}
