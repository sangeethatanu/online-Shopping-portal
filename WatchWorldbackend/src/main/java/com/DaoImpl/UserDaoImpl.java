package com.DaoImpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.Dao.UserDao;
import com.model.User;

public class UserDaoImpl implements UserDao
{
	@Autowired
SessionFactory sessionFactory;
	
@Autowired
public UserDaoImpl(SessionFactory sessionFactory)
{
super();	
this.sessionFactory=sessionFactory;

}
//@Transactional
public void insertUser(User user)
{
Session session=sessionFactory.openSession();
session.beginTransaction();
session.persist(user);
session.getTransaction().commit();

}

}


