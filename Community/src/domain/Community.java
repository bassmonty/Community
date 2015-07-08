package domain;

public class Community implements Comparable<Community> {
	private int ID;
	private String name;
	private String address;

	public Community(int id, String name, String address) {
		super();
		this.ID = id;
		this.name = name;
		this.address = address;
	}

	public Community() {
		// TODO Auto-generated constructor stub
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	// Implements the Comparable Interface
	@Override
	public int compareTo(Community o) {
		return this.getName().compareTo(o.getName());
	}

}
