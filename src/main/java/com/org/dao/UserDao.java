 package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.org.dto.User;

public class UserDao {
	
	
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("Auro");
		
		EntityManager em = emf.createEntityManager();
		
		EntityTransaction et = em.getTransaction();
		
   public void saveAndUpdateUser(User user) {
	   
		et.begin();
		em.merge(user);
		et.commit();
		
		
	}
	
	public void fetchUserById(int id){
		/*
		 * EntityManagerFactory emf = Persistence.createEntityManagerFactory("Surya");
		 * 
		 * EntityManager em = emf.createEntityManager();
		 */
		
		User user = em.find(User.class, id);
		
	}
	
	
	
	
	public List<User> fetchAllUser(){
//		EntityManagerFactory emf = Persistence.createEntityManagerFactory("Auro");
//		
//		EntityManager em = emf.createEntityManager();
		
		Query query = em.createQuery("select users from User users");
		
		List<User> users=query.getResultList();
		
		for(User u: users) {
			u.getId();
			u.getAge();
			u.getEmail();
			u.getName();
			u.getMobile();
		
		}
		return users;
		
	}
	
	public User fetchUserByEmailAndPassword(String email,String password) {
		
		
		Query qr=em.createQuery("select S from User S where S.email=?1 , S.password=?2");
		qr.setParameter(1, email);
		qr.setParameter(2, password);
		
		List<User> users =qr.getResultList();
		
		if(users.isEmpty())
			return null;
		
		return users.get(0);
		
		
		
	}
	
	

}
