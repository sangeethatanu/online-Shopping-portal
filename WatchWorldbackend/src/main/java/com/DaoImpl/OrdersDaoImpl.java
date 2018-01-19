package com.DaoImpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.criteria.Order;

import org.hibernate.HibernateException;
import org.springframework.stereotype.Service;

import com.Dao.OrderDao;

import com.model.Orders;

@Repository("orderDaoImpl")
public class OrdersDaoImpl implements OrderDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public OrdersDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}

	//@Transactional
		public void insertOrder(Orders order)
		{
		Session session=sessionFactory.openSession();
		session.persist(order);
		session.beginTransaction();
		session.getTransaction().commit();

		}

		public void insertOrder(Order order) {
			// TODO Auto-generated method stub
			
		}

		
				


}
