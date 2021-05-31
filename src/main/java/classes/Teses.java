package classes;

public class Teses {

	private int id, conference,user,status;
	private String text,name,start,end;
	
	public Teses() {
		
	}
	
	public Teses(int id,int conference,int user, String text,int status, String name) {
		this.id=id;
		this.conference=conference;	
		this.user=user;
		this.text=text;
		this.status=status;
		this.name=name;
	}
	
	public Teses(int id,int conference,int user, String text,int status, String name,String start, String end) {
		this.id=id;
		this.conference=conference;
		this.user=user;
		this.text=text;
		this.status=status;
		this.name=name;
	}
	
	public Teses(int conference,int user, String text,int status) {
		this.conference=conference;
		this.user=user;
		this.text=text;
		this.status=status;
	}
	
	public int getId() {
		return id;
	}
	
	public int getConference() {
		return conference;
	}
	
	public int getUser() {
		return user;
	}
	
	public String getText() {
		return text;
	}
	public int getStatus() {
		return status;
	}
	
	public String getName() {
		return name;
	}
	
	public String getStart() {
		return start;
	}
	
	public String getEnd() {
		return end;
	}
}
