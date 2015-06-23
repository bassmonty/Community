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
		super();
		this.ds = ds;
	}

	public ArrayList<User> getUsers() throws SQLException{
		ArrayList<User> users = new ArrayList<>();
		Connection connection = null;

		try {
			connection = ds.getConnection();

			PreparedStatement ps = connection.prepareStatement("SELECT * FROM USERS");
			ResultSet resultSet = ps.executeQuery();

			while (resultSet.next()) {
				users.add(new User( 
									resultSet.getInt("id"),
									resultSet.getString("name"),
									resultSet.getString("userName"),
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

		User foundUser = null;
		Connection connection = null;
		
		try {
			connection = ds.getConnection();
			PreparedStatement ps = connection.prepareStatement("select id, name, username, password, email from Users where username = ? and password = ?");
			ps.setString(1, userName);
			ps.setString(2, password);
			
			ResultSet resultSet = ps.executeQuery();
			while (resultSet.next()) {
				foundUser = new User(	resultSet.getInt("id"),
										resultSet.getString("name"),
										resultSet.getString("userName"),
										resultSet.getString("password"),
										resultSet.getString("email"));
			}
			
			resultSet.close();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(connection != null) {
				try {
					connection.close();
					
				} catch(SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		return foundUser;
	}
	
	public User findUserWithNameAndEmail(String name, String email) {

		ArrayList<User> thePeople = null;
		try {
			thePeople = getUsers();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

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
		
		Connection connection = null;
		
		try {
			connection = ds.getConnection();
			
			String uemail = aUser.getEmail();
			String uname = aUser.getName();
			String uUserName = aUser.getUserName();
			String upass = aUser.getPassword();
			
			
			Calendar rightNow = Calendar.getInstance();
			long id = rightNow.getTimeInMillis();
			
			PreparedStatement prepStatement = connection.prepareStatement("insert into USERS (email, name, userName, password) values (?, ?, ?, ?)");

			prepStatement.setString(2, uemail);
			prepStatement.setString(3, uname);
			prepStatement.setString(4, uUserName);
			prepStatement.setString(5, upass);
			
			
			prepStatement.execute();


			prepStatement.close();

			added = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if (connection != null) {
				try {
					connection.close();

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		return added;
	}

	public User getUserWithID(String theUserID) {
		User foundUser = null;
		Connection connection = null;
		
		try {
			
			connection = ds.getConnection();

			PreparedStatement ps = connection.prepareStatement("select ID, EMAIL, NAME, USERNAME, PASSWORD from USERS where ID = ?");
			ps.setString(1, theUserID);
			ResultSet resultSet = ps.executeQuery();

			while (resultSet.next()) {
				foundUser = new User( 
									resultSet.getInt("id"),
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
		} finally {
			if (connection != null) {
				try {
					connection.close();

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}


		return foundUser;
	}

	
}