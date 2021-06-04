package Clothes.ModelUser;

public class Menus {
private int id;
private String name;
public int getId() {
	return id;
}
public Menus() {
	super();
	// TODO Auto-generated constructor stub
}
public Menus(int id, String name, String url) {
	super();
	this.id = id;
	this.name = name;
	this.url = url;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getUrl() {
	return url;
}
public void setUrl(String url) {
	this.url = url;
}
private String url;
}
