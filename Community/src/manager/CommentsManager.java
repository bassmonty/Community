package manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import domain.Comment;

public class CommentsManager {

	DataSource ds;

	public CommentsManager(DataSource ds) {
		super();
		this.ds = ds;
	}

	public ArrayList<Comment> getComment() throws SQLException {
		ArrayList<Comment> comments = new ArrayList<>();
		Connection connection = null;

		try {
			connection = ds.getConnection();

			PreparedStatement ps = connection
					.prepareStatement("SELECT * FROM COMMENTLIST");
			ResultSet resultSet = ps.executeQuery();

			while (resultSet.next()) {
				comments.add(new Comment(resultSet.getInt("id"), resultSet
						.getInt("user_id"),
						resultSet.getString("commentTitle"), resultSet
								.getString("commentContent")));
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

	public Comment findCommentWithUserId(int user_ID) {

		Comment foundComment = null;
		Connection connection = null;

		try {
			connection = ds.getConnection();
			PreparedStatement ps = connection
					.prepareStatement("select id, user_id, commenttitle, commentcontent from CommentList where id = ? and user_id = ? and commenttitle = ? and commentcontent = ?");
			ps.setInt(1, user_ID);

			ResultSet resultSet = ps.executeQuery();
			while (resultSet.next()) {
				foundComment = new Comment(resultSet.getInt("id"),
						resultSet.getInt("user_ID"),
						resultSet.getString("commenttitle"),
						resultSet.getString("commentcontent"));
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

		return foundComment;
	}

}
