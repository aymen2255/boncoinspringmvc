package fr.treeptik.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import fr.treeptik.dao.UserDAO;
import fr.treeptik.model.User;

@Repository
public class UserDAOImpl implements UserDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public void addUser(User user) {
		em.persist(user);

	}

	@Override
	public void updateUser(User user) {
		em.merge(user);

	}

	@Override
	public List<User> listusers() {
		List<User> users = em.createQuery("from User",User.class).getResultList();
		return users;
	}

	@Override
	public User getUserById(Integer userId) {
		User user = em.find(User.class, userId);
		return user;
	}

	@Override
	public void removeUser(Integer id) {
		// TODO Auto-generated method stub

	}

}
