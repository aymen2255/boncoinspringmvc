package fr.treeptik.dao;

import java.util.List;

import fr.treeptik.model.User;

public interface UserDAO {
	public void addUser(User user);

	public void updateUser(User user);

	public List<User> listusers();

	public User getUserById(Integer userId);

	public void removeUser(Integer id);
}
