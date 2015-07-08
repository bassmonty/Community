package manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import domain.Community;

public class CommunitiesManager {
	
	DataSource ds;

	public CommunitiesManager(DataSource ds) {
		super();
		this.ds = ds;
	}
	
	public ArrayList<Community> getCommunities() throws SQLException{
		ArrayList<Community> communities = new ArrayList<>();
		Connection connection = null;

		try {
			connection = ds.getConnection();

			PreparedStatement ps = connection.prepareStatement("SELECT COMMUNITY_ID, NAME, ADDRESS FROM COMMUNITYLIST");
			ResultSet resultSet = ps.executeQuery();

			while (resultSet.next()) {
				communities.add(new Community( 
									resultSet.getInt("community_ID"),
									resultSet.getString("name"),
									resultSet.getString("address")));
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

		return communities;
	}
	

	public Community findCommunityWithId(int ID) {

		Community foundCommunity = null;
		Connection connection = null;
		
		try {
			connection = ds.getConnection();
			PreparedStatement ps = connection.prepareStatement("select id, name, address from communities where id = ? and name = ? and address = ?");
			ps.setInt(1, ID);
			
			ResultSet resultSet = ps.executeQuery();
			while (resultSet.next()) {
				foundCommunity = new Community(	resultSet.getInt("id"),
										resultSet.getString("name"),
										resultSet.getString("address"));
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
		
		return foundCommunity;
	}
	
}

