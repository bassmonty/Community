package domain;

public class User implements Comparable<User> {
	private int ID;
	private String name;
	private String userName;
	private String password;
	private String email;
	private int community_ID;

	public User(int id, String name, String userName,
			String password, String email, int community_ID) {
		super();
		this.ID = id;	
		this.name = name;
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.community_ID = community_ID;
	}
	
	public User(String name, String userName,
			String password, String email, int community_ID){
		super();
		this.name = name;
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.community_ID = community_ID;
	}

	public User(int id, String userName, String password) {
		this.ID = id;
		this.userName = userName;
		this.password = password;
		
	}

	public User() {
		// TODO Auto-generated constructor stub
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public int getCommunity_ID() {
		return community_ID;
	}

	public void setCommunity_ID(int community_ID) {
		this.community_ID = community_ID;
	}

	@Override
	public String toString() {
		return "User [ID=" + ID + ", name=" + name + ", userName=" + userName
				+ ", password=" + password + ", email=" + email
				+ ", communityID=" + community_ID + "]";
	}

	// Implements the Comparable Interface
	@Override
	public int compareTo(User o) {
		return this.getName().compareTo(o.getName());
	}

	// Helper methods
	public String getCapitalizedName() {
		String sString = this.name.toLowerCase();
		sString = Character.toString(sString.charAt(0)).toUpperCase()
				+ sString.substring(1);

		return sString;
	}


}
