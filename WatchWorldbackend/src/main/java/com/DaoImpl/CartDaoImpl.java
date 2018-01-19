package com.DaoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Dao.CartDao;
import com.model.Cart;
import com.model.Category;
import com.model.Product;


@Repository
public class CartDaoImpl implements CartDao {
	
	@Autowired
	SessionFactory sessionFactory;
	private int cartProductId;
		
	@Autowired
	public CartDaoImpl(SessionFactory sessionFactory)
	{	
	this.sessionFactory=sessionFactory;

	}
	//@Transactional
	public void insertCart(Cart cart)
	{
	Session session=sessionFactory.openSession();
	session.beginTransaction();
	session.persist(cart);
	session.getTransaction().commit();

	}
	@SuppressWarnings("unchecked")
	public List<Cart> findByCartID(String userId)
	{
		
		Session session=sessionFactory.openSession();
		List<Cart> cr=null;
		try {
			
			session.beginTransaction();
			cr=(List<Cart>)session.createQuery("from Product where userMailId=:email").setString("email",userId).list();
			session.getTransaction().commit();
		}
catch(HibernateException e) {
	
	e.printStackTrace();
session.getTransaction().rollback();
}
			return cr;
		
	}
	
	public Cart getCartById(int cartId,String userEmail )
	{
		
		Session session=sessionFactory.openSession();
		 Cart cr=null;
		try {
			
			session.beginTransaction();
			cr=(Cart) session.createQuery("from Product where userMail & "
		+ "cartProductID=:pid").setString("email",userEmail).setInteger("id",cartProductId).uniqueResult();
			session.getTransaction().commit();
		}
catch(HibernateException e) {
	
	e.printStackTrace();
session.getTransaction().rollback();
}
			return cr;
		
	}
	
	public void updateCart(int cartId)
	{
	Session session=sessionFactory.openSession();
	session.beginTransaction();
	Cart cr=(Cart)session.get(Cart.class,cartId);
	session.update(cr);
	session.getTransaction().commit();

	}
	
	public void deleteCart(int cartId)
	{
	Session session=sessionFactory.openSession();
	session.beginTransaction();
	Cart cr=(Cart)session.get(Cart.class,cartId);
	session.delete(cr);
	session.getTransaction().commit();

	}
		
}
