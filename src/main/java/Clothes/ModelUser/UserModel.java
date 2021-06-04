package Clothes.ModelUser;

public class UserModel {
private long id ;
private String Name;
private String password;
private String DisplayName;
private String Address;
public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public String getName() {
	return Name;
}
public void setName(String name) {
	Name = name;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getDisplayName() {
	return DisplayName;
}
public void setDisplayName(String displayName) {
	DisplayName = displayName;
}
public String getAddress() {
	return Address;
}
public void setAddress(String address) {
	Address = address;
}
public UserModel(long id, String name, String password, String displayName, String address) {
	super();
	this.id = id;
	Name = name;
	this.password = password;
	DisplayName = displayName;
	Address = address;
}
public UserModel() {
	super();
	// TODO Auto-generated constructor stub
}

}
