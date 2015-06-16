package domain;

public class User implements Comparable<User> {
	private String ID;
	private String email;
	private String name;
	private String userName;
	private String password;

	public User(String email, String name, String userName, String password) {
		super();
		this.email = email;
		this.name = name;
		this.userName = userName;
		this.password = password;
	}

	public User(String userName, String password) {
		this.userName = userName;
		this.password = password;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "User [ID=" + ID + ", email=" + email + ", name=" + name
				+ ", userName=" + userName + ", password=" + password + "]";
	}

	/**
	 * @return the iD
	 */
	public String getID() {
		return ID;
	}

	/**
	 * @param iD
	 *            the iD to set
	 */
	public void setID(String iD) {
		ID = iD;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email
	 *            the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password
	 *            the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
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

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

}
