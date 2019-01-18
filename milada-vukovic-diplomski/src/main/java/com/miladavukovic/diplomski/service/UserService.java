package com.miladavukovic.diplomski.service;

import java.util.List;

import com.miladavukovic.diplomski.model.User;

public interface UserService {

	public abstract User getUserById(String username);

	public abstract void saveUser(User user);

	public abstract void updateUser(User user);

	public abstract void deleteUser(String username);

	public abstract List<User> getAllUsers();

}
