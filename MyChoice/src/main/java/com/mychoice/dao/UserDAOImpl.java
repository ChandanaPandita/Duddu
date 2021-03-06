package com.mychoice.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mychoice.model.UserModel;
import com.mychoice.model.UserRole;
@Repository
public class UserDAOImpl implements UserDAO {
    @Autowired
	SessionFactory sessionFactory;
    //saving the entry of the customer details
	public void addUserModel(UserModel user){
		System.out.println("Add User");
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		user.setEnabled(true);
		session.save(user);
		UserRole userRole=new UserRole();
		userRole.setAuthority("ROLE_USER");
		userRole.setUserId(user.getId());
		session.save(userRole);
		transaction.commit();
		System.out.println("Details have been saved");
	}
	@Override
	public List<UserModel> viewUsers() {
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		List<UserModel> list=session.createCriteria(UserModel.class).list();
		return list;
	}
		
}
