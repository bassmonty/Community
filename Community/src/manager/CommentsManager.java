package manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import domain.Comments;

public class CommentsManager {

	DataSource ds;

	public CommentsManager(DataSource ds) {
		super();
		this.ds = ds;
	}

	public ArrayList<Comments> getComments() throws SQLException {
		ArrayList<Comments> comments = new ArrayList<>();
		Connection connection = null;

		try {
			connection = ds.getConnection();

			PreparedStatement ps = connection.prepareStatement("SELECT * FROM COMMENTS INNER JOIN USERS ON COMMENTS.USER_ID=USERS.USER_ID ORDER BY ID DESC");
			ResultSet resultSet = ps.executeQuery();

			while (resultSet.next()) {
				System.out.println(resultSet.getString("userName"));
				comments.add(new Comments(resultSet.getInt("id"), 
						resultSet.getInt("user_id"),
						resultSet.getString("userName"),
						resultSet.getString("commentTopic"), 
						resultSet.getString("commentContent")));
			}

			resultSet.close();
			ps.close();

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

		return comments;
	}

	public ArrayList<Comments> getCommentsByUserId(int user_ID) {
		ArrayList<Comments> listOfComments = new ArrayList<>();
		Connection connection = null;

		try {
			connection = ds.getConnection();
			PreparedStatement ps = connection
					.prepareStatement("SELECT COMMENTS.ID, USERS.USER_ID, USERS.USERNAME, COMMENTS.COMMENTTOPIC, COMMENTS.COMMENTCONTENT" +
			" FROM COMMENTS INNER JOIN USERS ON COMMENTS.USER_ID=USERS.USER_ID WHERE USERS.USER_ID = ?");
			ps.setInt(1, user_ID);

			ResultSet resultSet = ps.executeQuery();
			while (resultSet.next()) {
				listOfComments.add(new Comments(resultSet.getInt("id"),
						resultSet.getInt("user_ID"),
						resultSet.getString("userName"),
						resultSet.getString("commentTopic"),
						resultSet.getString("commentContent")));
			}

			resultSet.close();
			ps.close();
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

		return listOfComments;
	}

	public Comments getCommentByID(int theID) throws SQLException {
		
		Comments commentByID = null;
		Connection connection = null;
		
		try {
			connection = ds.getConnection();
			
			PreparedStatement ps = connection.prepareStatement("select * from Comments where id = ?");
	
			
			ps.setInt(1, theID);
			ResultSet resultSet= ps.executeQuery();
			
			while (resultSet.next()){
				commentByID = new Comments(resultSet.getInt("ID"), 
						resultSet.getInt("user_id"), 
						resultSet.getString("userName"),
						resultSet.getString("commentTitle"), 
						resultSet.getString("commentContent"));
			}
			resultSet.close();
			ps.close();
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
		return commentByID;
	}
	
	public boolean addComment(int user_id, String commentTitle, String commentContent) throws SQLException {
		boolean addedComment = false;
		Connection connection = null;
		
		try {
			connection = ds.getConnection();
			
			PreparedStatement ps = connection.prepareStatement("INSERT INTO COMMENTS (USER_ID, COMMENTTITLE, COMMENTCONTENT) VALUES (?, ?, ?) ");
	
			
			ps.setInt(1, user_id);
			ps.setString(2, commentTitle);
			ps.setString(3, commentContent);

			int updatedCount = ps.executeUpdate();
			if(updatedCount >=1) {
				addedComment = true;
			}
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
		return addedComment;
	}
	
	public boolean updateComment(Comments c) throws SQLException {
		boolean updatedComment = false;
		Connection connection = null;
		
		try {
			connection = ds.getConnection();
			
			PreparedStatement ps = connection.prepareStatement("update CommentList set user_id = ?, commenttopic = ?, commentcontent = ? where id = ?");
			ps.setInt(1, c.getUser_id());
			ps.setString(2, c.getCommentTopic());
			ps.setString(3, c.getCommentContent());
			ps.setInt(4, c.getID());

			int updatedCount = ps.executeUpdate();
			if(updatedCount >=1) {
				updatedComment = true;
			}
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
		return updatedComment;
	}
	
	public boolean deleteCommentByID(int theID) throws SQLException {
		boolean deletedComment = false;
		Connection connection = null;
		
		try {
			connection = ds.getConnection();
			
			PreparedStatement ps = connection.prepareStatement("delete from CommentList where id = ?");
			ps.setInt(1, theID);

			int updatedCount = ps.executeUpdate();
			if(updatedCount >=1) {
				deletedComment = true;
			}
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
		return deletedComment;
	}
	
}
