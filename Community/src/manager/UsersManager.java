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

			PreparedStatement ps = connection.prepareStatement("SELECT USERS.USER_ID, USERS.NAME, USERS.USERNAME, USERS.PASSWORD, USERS.EMAIL, COMMUNITYLIST.COMMUNITY_ID, COMMUNITYLIST.NAME " +
			"FROM USERS INNER JOIN COMMUNITYLIST ON COMMUNITYLIST.COMMUNITY_ID=USERS.COMMUNITY_ID ORDER BY USERS.USER_ID");
			ResultSet resultSet = ps.executeQuery();

			while (resultSet.next()) {
				users.add(new User( 
									resultSet.getInt("user_ID"),
									resultSet.getString("name"),
									resultSet.getString("userName"),
									resultSet.getString("password"),
									resultSet.getString("email"),
									resultSet.getInt("community_ID")));
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
			PreparedStatement ps = connection.prepareStatement("SELECT * FROM USERS WHERE USERNAME = ? AND PASSWORD = ?");
			ps.setString(1, userName);
			ps.setString(2, password);
			
			ResultSet resultSet = ps.executeQuery();
			while (resultSet.next()) {
				foundUser = new User(	resultSet.getInt("user_ID"),
										resultSet.getString("name"),
										resultSet.getString("userName"),
										resultSet.getString("password"),
										resultSet.getString("email"),
										resultSet.getInt("community_ID"));
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

	public boolean addUser(User addUser)  {
		// TODO - Put the user in the user db
		// FIXME - This has a bug

		// Example with data from SQL Script
		// insert into users (name, password) values ('sam', 'abcd');
		boolean added = false;
		
		Connection connection = null;
		
		try {
			connection = ds.getConnection();
			
			String addName = addUser.getName();
			String addUserName = addUser.getUserName();
			String addPassword = addUser.getPassword();
			String addEmail = addUser.getEmail();
			int addCommunity_ID = addUser.getCommunity_ID();
			

//			Calendar rightNow = Calendar.getInstance();
//			long timeNow = rightNow.getTimeInMillis();
			
			PreparedStatement prepStatement = connection.prepareStatement("insert into USERS (name, userName, password, email, community_ID) values (?, ?, ?, ?, ?)");

			prepStatement.setString(1, addName);
			prepStatement.setString(2, addUserName);
			prepStatement.setString(3, addPassword);
			prepStatement.setString(4, addEmail);
			prepStatement.setInt(5, addCommunity_ID);			
			
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

	public User findUserWithID(int theUserID) {
		User theFoundUser = null;
		Connection connection = null;
		
		try {
			
			connection = ds.getConnection();

			PreparedStatement ps = connection.prepareStatement("select user_ID, NAME, USERNAME, PASSWORD, EMAIL, community_ID from USERS where user_ID = ?");
			ps.setInt(1, theUserID);
			ResultSet resultSet = ps.executeQuery();

			while (resultSet.next()) {
				theFoundUser = new User( 
									resultSet.getInt("user_ID"),
									resultSet.getString("name"),
									resultSet.getString("userName"),
									resultSet.getString("password"),
									resultSet.getString("email"),
									resultSet.getInt("community_ID"));
									
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


		return theFoundUser;
	}

	public User findUserWithCommunityID(int communityID) {
		User theFoundUser = null;
		Connection connection = null;
		
		try {
			
			connection = ds.getConnection();

			PreparedStatement ps = connection.prepareStatement("select user_ID, NAME, USERNAME, PASSWORD, EMAIL, community_ID from USERS where community_ID = ?");
			ps.setInt(1, communityID);
			ResultSet resultSet = ps.executeQuery();

			while (resultSet.next()) {
				theFoundUser = new User( 
									resultSet.getInt("user_ID"),
									resultSet.getString("email"),
									resultSet.getString("name"),
									resultSet.getString("userName"),
									resultSet.getString("password"),
									resultSet.getInt("community_ID"));
									
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


		return theFoundUser;
	}
	
	
}