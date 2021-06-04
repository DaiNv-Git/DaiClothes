package Clothes.DTO;

import java.sql.Date;

public class ProductsDTO {
	private int Id_product;
	private String Name;
	public ProductsDTO() {
		super();
		
	}
	private String description;
	private int price;
	public ProductsDTO(int id_product, String name, String description, int price, String title, String size,
			String colors, String image, String image2, String image3, int categoryId, boolean newProduct, long idColor,
			String namecolor, Date createAt, Date updateteAt) {
		super();
		Id_product = id_product;
		Name = name;
		this.description = description;
		this.price = price;
		this.title = title;
		this.size = size;
		this.colors = colors;
		this.image = image;
		this.image2 = image2;
		this.image3 = image3;
		CategoryId = categoryId;
		this.newProduct = newProduct;
		this.idColor = idColor;
		Namecolor = namecolor;
		this.createAt = createAt;
		this.updateAt = updateteAt;
	}
	public ProductsDTO(int id_product, String name, String description, int price, String title, String size,
			String colors, String image, String image2, String image3, int categoryId, int oldPrice, boolean newProduct,
			boolean highLight, long idColor, String namecolor, Date createAt, Date updateAt) {
		super();
		Id_product = id_product;
		Name = name;
		this.description = description;
		this.price = price;
		this.title = title;
		this.size = size;
		this.colors = colors;
		this.image = image;
		this.image2 = image2;
		this.image3 = image3;
		CategoryId = categoryId;
		this.oldPrice = oldPrice;
		this.newProduct = newProduct;
		this.highLight = highLight;
		this.idColor = idColor;
		Namecolor = namecolor;
		this.createAt = createAt;
		this.updateAt = updateAt;
	}
	private String title;
	private String size;
	private String colors;
	private String image;
	private String image2;
	private String image3;
	private int CategoryId;
	public int getOldPrice() {
		return oldPrice;
	}
	public void setOldPrice(int oldPrice) {
		this.oldPrice = oldPrice;
	}
	private int oldPrice;
	private boolean newProduct;
	private boolean highLight;

	public boolean isHighLight() {
		return highLight;
	}
	public void setHighLight(boolean highLight) {
		this.highLight = highLight;
	}
	public Date getUpdateAt() {
		return updateAt;
	}
	public void setUpdateAt(Date updateAt) {
		this.updateAt = updateAt;
	}
	private long idColor;
	private String Namecolor;
	public int getId_product() {
		return Id_product;
	}
	public void setId_product(int id_product) {
		Id_product = id_product;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
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
		return CategoryId;
	}
	public void setCategoryId(int categoryId) {
		CategoryId = categoryId;
	}
	public boolean isNewProduct() {
		return newProduct;
	}
	public void setNewProduct(boolean newProduct) {
		this.newProduct = newProduct;
	}
	public long getIdColor() {
		return idColor;
	}
	public void setIdColor(long idColor) {
		this.idColor = idColor;
	}
	public String getNamecolor() {
		return Namecolor;
	}
	public void setNamecolor(String namecolor) {
		Namecolor = namecolor;
	}
	public Date getCreateAt() {
		return createAt;
	}
	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}
	public Date getUpdateteAt() {
		return updateAt;
	}
	public void setUpdateteAt(Date updateteAt) {
		this.updateAt = updateteAt;
	}
	private Date createAt;
	private Date updateAt;
}
