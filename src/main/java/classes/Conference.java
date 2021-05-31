package classes;

import java.io.Serializable;

public class Conference implements Serializable{

	private int id, owner;
	private String name,description,category,photo;
	private String start,end,convertCategory;
	
	public Conference() {
		
	}
	
	public Conference(String name,int owner,String description, String start,String end,String category,String photo) {
		this.name=name;
		this.owner=owner;
		this.description=description;
		this.start=start;
		this.end=end;
		this.category=category;
		this.photo=photo;
	}
	
	public Conference(int id,String name,int owner,String description, String start,String end,String category,String photo) {
		this.id=id;
		this.name=name;
		this.owner=owner;
		this.description=description;
		this.start=start;
		this.end=end;
		this.category=category;
		this.photo=photo;
	}
	
	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
	public int getOwner() {
		return owner;
	}
	
	public String getDescription() {
		return description;
	}
	
	public String getStart() {
		return start;
	}
	
	public String getEnd() {
		return end;
	}
	
	public String getCategory() {
		return category;
	}
	
	public String getPhoto() {
		return photo;
	}
	
	public String getconvertCategory() {
		if(category.equals("science"))
			convertCategory="Наука";
		if(category.equals("psy"))
			convertCategory="Психологія";
		if(category.equals("mastur"))
			convertCategory="Саморозвиток";
		if(category.equals("prog"))
			convertCategory="Програмування";
		if(category.equals("agrar"))
			convertCategory="Аграрія";
		return convertCategory;
	}
}
