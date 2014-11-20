package fr.treeptik.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.treeptik.dao.UserDAO;
import fr.treeptik.model.User;
import fr.treeptik.service.UserService;


@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDAO userDAO;

	@Transactional
	public void addUser(User user) {
		userDAO.addUser(user);
		
	}

	@Override
	public User getUserById(Integer userId) {
		return userDAO.getUserById(userId);
		 
	}

	@Override
	public List<User> listusers() {
		return userDAO.listusers();
		
	}
}
