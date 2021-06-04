package Clothes.ModelUser;

public class Slides {
	private int Sid;
	private String image;
	private String title;
	private int Sale;
	public int getSid() {
		return Sid;
	}
	public Slides(int sid, String image, String title, int sale, String content) {
		super();
		this.Sid = sid;
		this.image = image;
		this.title = title;
		this.Sale = sale;
		this.content = content;
	}

	public void setSid(int sid) {
		Sid = sid;
	}

	public int getSale() {
		return Sale;
	}

	public void setSale(int sale) {
		this.Sale = sale;
	}

	public int getId() {
		return Sid;
	}

	public void setId(int Sid) {
		this.Sid = Sid;
	}

	public Slides() {

	}

	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	private String content;
}
