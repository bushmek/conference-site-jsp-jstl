package classes;

public class User {

	private int id;
	private String login,pass,name,email;

	public User() {
		
	}
	
	public User(String login,String pass,String name,String email) {
		this.login=login;
		this.pass=pass;
		this.name=name;
		this.email=email;
	}
	
	public User(int id, String login,String pass,String name,String email) {
		this.id=id;
		this.login=login;
		this.pass=pass;
		this.name=name;
		this.email=email;
	}
	
	public User(int id, String login,String pass,String name) {
		this.id=id;
		this.login=login;
		this.pass=pass;
		this.name=name;
	}
	
	public int getId() {
		return id;
	}
	
	public String getLogin() {
		return login;
	}
	
	public String getPass() {
		return pass;
	}
	
	public String getName() {
		return name;
	}
	

	public String getEmail() {
		return email;
	}
}
