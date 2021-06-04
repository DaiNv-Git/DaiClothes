package Clothes.ModelUser;

public class Categorys {
private int CId;
public int getCId() {
	return CId;
}
public Categorys(int cId, String cName) {
	super();
	CId = cId;
	CName = cName;
}

public Categorys() {
}
public void setCId(int cId) {
	CId = cId;
}
public String getCName() {
	return CName;
}
public void setCName(String cName) {
	CName = cName;
}
private String CName;

}
