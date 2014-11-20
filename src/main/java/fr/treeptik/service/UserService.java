package fr.treeptik.service;

import java.util.List;

import fr.treeptik.model.User;

public interface UserService {
public void addUser(User user);
public User getUserById(Integer userId);
public List<User> listusers();
}
