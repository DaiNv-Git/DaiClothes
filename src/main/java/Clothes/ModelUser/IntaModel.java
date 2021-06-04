package Clothes.ModelUser;

public class IntaModel {
private int Iid;
public IntaModel(int iid, String name, String image) {
	super();
	Iid = iid;
	this.name = name;
	this.image = image;
}
public IntaModel() {
	super();
}
public int getIid() {
	return Iid;
}
public void setIid(int iid) {
	Iid = iid;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
private String name;
private String image;
}
