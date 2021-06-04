package Clothes.ModelUser;

public class ProductModel {
private int id;
private String name;
private String description;
private String price;
private int oldPrice;
private String title;
private String size;
private String colors;
public ProductModel(int id, String name, String description, String price, int oldePrice, String title, String size,
		String colors, String image, String image2, String image3, int categoryId) {
	super();
	this.id = id;
	this.name = name;
	this.description = description;
	this.price = price;
	this.oldPrice = oldePrice;
	this.title = title;
	this.size = size;
	this.colors = colors;
	this.image = image;
	this.image2 = image2;
	this.image3 = image3;
	this.categoryId = categoryId;
}
private String image;
private String image2;
private String image3;
private int categoryId;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getoldPrice() {
	return oldPrice;
}
public void setoldPrice(int oldePrice) {
	this.oldPrice = oldePrice;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getSize() {
	return size;
}
public void setSize(String size) {
	this.size = size;
}
public String getColors() {
	return colors;
}
public void setColors(String colors) {
	this.colors = colors;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public String getImage2() {
	return image2;
}
public void setImage2(String image2) {
	this.image2 = image2;
}
public String getImage3() {
	return image3;
}
public void setImage3(String image3) {
	this.image3 = image3;
}
public int getCategoryId() {
	return categoryId;
}
public void setCategoryId(int categoryId) {
	this.categoryId = categoryId;
}

public ProductModel() {
	super();
}

}
