package domain;

public class Comment implements Comparable<Community> {
	private int ID;
	private int user_id;
	private String commentTitle;
	private String commentContent;

	public Comment(int id, int user_id, String commentTitle,
			String commentContent) {
		super();
		this.ID = id;
		this.user_id = user_id;
		this.commentTitle = commentTitle;
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

	public String getCommentTitle() {
		return commentTitle;
	}

	public void setCommentTitle(String commentTitle) {
		this.commentTitle = commentTitle;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	// Implements the Comparable Interface
	public int compareTo(Comment o) {
		return this.getCommentTitle().compareTo(o.getCommentTitle());
	}

	@Override
	public int compareTo(Community o) {
		// TODO Auto-generated method stub
		return 0;
	}
}
