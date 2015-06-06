package com.community.database;

import java.util.ArrayList;
import java.util.Collections;
import java.util.UUID;

import com.community.domain.User;

public class DBManager {

	// Static variables aka Class variables
	// sharedInstnace is a Singelton
	private static DBManager sharedInstance;

	// Instance Variables
	ArrayList<User> people = new ArrayList<User>();

	private DBManager() {
		// Intialize the people into the instance
		this.addUser(new User(UUID.randomUUID(), "pmontoro88@gmail.com", "Paul Montoro", "bassmonty", "hisson"));
		this.addUser(new User(UUID.randomUUID(), "jakedromgoole@javadude.com", "Jake Dromgoole", "Jdromgoole", "abc"));
	}

	// Initialize the sharedInstance singleton here
	public static DBManager sharedInstance() {
		if (sharedInstance == null) {
			sharedInstance = new DBManager();
		}

		return sharedInstance;
	}

	public void addUser(User user) {
		people.add(user);
	}

	public ArrayList<User> getPeople() {

		Collections.sort(people);

		return people;
	}

	public User findUserWithNameAndEmail(String name, String email) {

		ArrayList<User> thePeople = getPeople();

		// Loop thru the users and find the one who has
		// the name and email we are looking for and return it.
		// If they are not found return null.
		for (User user : thePeople) {
			if ((user.getName().equalsIgnoreCase(name))
					&& (user.getEmail().equalsIgnoreCase(email))) {
				return user;
			}
		}
		// No user found matching name and email
		return null;
	}

	public User findUserWithUsernameAndPassword(String userName, String password) {

		ArrayList<User> thePeople = getPeople();

		// Loop thru the users and find the one who has
		// the name and email we are looking for and return it.
		// If they are not found return null.
		for (User user : thePeople) {
			if ((user.getUserName().equalsIgnoreCase(userName))
					&& (user.getPassword().equalsIgnoreCase(password))) {
				return user;
			}
		}
		// No user found matching name and email
		return null;
	}

	public User findUserWithID(UUID theUserID) {

		ArrayList<User> thePeople = getPeople();

		UUID id = theUserID;

		// Loop thru the users and find the one who has
		// the name and email we are looking for and return it.
		// If they are not found return null.
		for (User user : thePeople) {
			if ( user.getID().equals(id) ) {
				return user;
			}
		}
		// No user found matching name and email
		return null;

	}

}
