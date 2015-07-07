package domain;

public class Comments implements Comparable<Community> {
	private int ID;
	private int user_id;
	private String userName;
	private String commentTopic;
	private String commentContent;

	public Comments(int id, int user_id, String userName, String commentTopic,
			String commentContent) {
		super();
		this.ID = id;
		this.user_id = user_id;
		this.userName = userName;
		this.commentTopic = commentTopic;
		this.commentContent = commentContent;

	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getCommentTopic() {
		return commentTopic;
	}

	public void setCommentTopic(String commentTopic) {
		this.commentTopic = commentTopic;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}


	@Override
	public String toString() {
		return "Comments [ID=" + ID + ", user_id=" + user_id + ", userName="
				+ userName + ", commentTopic=" + commentTopic
				+ ", commentContent=" + commentContent + "]";
	}

	// Implements the Comparable Interface
	public int compareTo(Comments o) {
		return this.getCommentTopic().compareTo(o.getCommentTopic());
	}

	@Override
	public int compareTo(Community o) {
		// TODO Auto-generated method stub
		return 0;
	}

}
