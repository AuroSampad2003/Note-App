package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.org.dto.Notes;



public class NoteDao {
	public void fetchNotesById(int id){
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("Auro");
		
		EntityManager em = emf.createEntityManager();
		
		Notes note = em.find(Notes.class, id);
		
	}
	
	public List<Notes> fetchAllUser(){
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("Auro");
		
		EntityManager em = emf.createEntityManager();
		
		Query query = em.createQuery("select users from user users");
		
		List<Notes> notes=query.getResultList();
		
		for(Notes n: notes) {
			n.getId();
			n.getTitle();
			n.getDescription();
		
		}
		return notes;
		
	}


}