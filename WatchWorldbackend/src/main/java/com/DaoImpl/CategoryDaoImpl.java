package com.DaoImpl;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.Dao.CategoryDao;
import com.model.Category;

import antlr.collections.List;
@Repository
@Service
public class CategoryDaoImpl implements CategoryDao {
	@Autowired
	SessionFactory sessionFactory;
		
	@Autowired
	public CategoryDaoImpl(SessionFactory sessionFactory)
	{	
	this.sessionFactory=sessionFactory;

	}
	//@Transactional
	public void insertCategory(Category category)
	{
	Session session=sessionFactory.openSession();
	session.beginTransaction();
	session.persist(category);
	session.getTransaction().commit();

	}
	public Category findBySuppId(int cid)
	{
		
		Session session=sessionFactory.openSession();
		Category c=null;
		try {
			
			session.beginTransaction();
			c=session.get(Category.class,cid);
			session.getTransaction().commit();
		}
catch(HibernateException e) {
	
	System.out.println(e.getMessage());
session.getTransaction().rollback();
}
			return c;
		
	}

}
