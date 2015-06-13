package manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;

import javax.sql.DataSource;

import org.apache.derby.client.am.DateTime;

import domain.User;

public class UsersManager {

	DataSource ds;

	public UsersManager(DataSource ds) {
		this.ds = ds;
	}

	public ArrayList<User> getUsers() {
		ArrayList<User> users = new ArrayList<>();

		try {
			Connection connection;
			connection = ds.getConnection();

			PreparedStatement ps = connection.prepareStatement("UUID, USERNAME, NAME, PASSWORD, EMAIL from COMM_USER");
			ResultSet resultSet = ps.executeQuery();

			while (resultSet.next()) {
				users.add(new User( resultSet.getString("uuid"),
									resultSet.getString("username"),
									resultSet.getString("name"),
									resultSet.getString("password"),
									resultSet.getString("email")));
			}

			resultSet.close();
			ps.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}

	public User findUserWithUsernameAndPassword(String userName, String password) {

		ArrayList<User> theUsers = getUsers();

		// Loop thru the users and find the one who has
		// the name and email we are looking for and return it.
		// If they are not found return null.
		for (User user : theUsers) {
			if ((user.getUserName().equalsIgnoreCase(userName))
					&& (user.getPassword().equalsIgnoreCase(password))) {
				return user;
			}
		}
		// No user found matching name and email
		return null;
	}
	
	public User findUserWithNameAndEmail(String name, String email) {

		ArrayList<User> thePeople = getUsers();

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

	public boolean addUser(User aUser)  {
		// TODO - Put the user in the user db
		// FIXME - This has a bug

		// Example with data from SQL Script
		// insert into users (name, password) values ('sam', 'abcd');
		boolean added = false;
		try {
			Connection connection;
			connection = ds.getConnection();

			String uUUID = aUser.getID().toString();
			String uemail = aUser.getEmail();
			String uname = aUser.getName();
			String uUserName = aUser.getUserName();
			String upass = aUser.getPassword();
			
			
			Calendar rightNow = Calendar.getInstance();
			long id = rightNow.getTimeInMillis();
			
			PreparedStatement prepStatement = connection.prepareStatement("insert into ACC_USER (uuid, email, name, userName, password) values (?, ?, ?, ?, ?)");

			
			prepStatement.setString(1, uUUID);
			prepStatement.setString(2, uemail);
			prepStatement.setString(3, uname);
			prepStatement.setString(4, uUserName);
			prepStatement.setString(5, upass);
			
			
			prepStatement.execute();


			prepStatement.close();
			connection.close();

			added = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return added;
	}

	public User getUserWithID(String theUserID) {
		User foundUser = null;

		try {
			Connection connection;
			connection = ds.getConnection();

			PreparedStatement ps = connection.prepareStatement("select UUID, EMAIL, NAME, USERNAME, PASSWORD from COMM_USER where UUID = ?");
			ps.setString(1, theUserID);
			ResultSet resultSet = ps.executeQuery();

			while (resultSet.next()) {
				foundUser = new User( 
									resultSet.getString("uuid"),
									resultSet.getString("email"),
									resultSet.getString("name"),
									resultSet.getString("userName"),
									resultSet.getString("password"));
									
			}

			resultSet.close();
			ps.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return foundUser;
	}

	
}