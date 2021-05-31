package classes;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Connect {

	public Connect() {
		
	}
	
	public static Connection getConnect() {
		Connection conn=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance();
			conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/site?serverTimezone=Europe/Moscow&useSSL=false", "root", "root");
		} catch (InstantiationException | IllegalAccessException | IllegalArgumentException | InvocationTargetException
				| NoSuchMethodException | SecurityException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	public static ArrayList<Conference> getAllConferences(Connection conn){
		ArrayList<Conference> conferences = new ArrayList<Conference>();
		 try {
		 Statement statement = conn.createStatement();
		 ResultSet resultSet = statement.executeQuery("SELECT * FROM conferences");
		 while(resultSet.next()){
           int id = resultSet.getInt(1);
           String name = resultSet.getString(2);
           int owner= resultSet.getInt(3);
           String description = resultSet.getString(4);
           String start = resultSet.getString(5);
           String end = resultSet.getString(6);
           String category = resultSet.getString(7);
           String photo = resultSet.getString(8);
           Conference conference = new Conference(id, name, owner,description,start,end,category,photo);
           conferences.add(conference);
       	 }
		 }catch(Exception ex) {
			 ex.printStackTrace();
		 }
		
		return conferences;
	}
	
	public static Conference getOneConference(Connection conn,int id) {
		Conference conference=null;
		try {
			 Statement statement = conn.createStatement();
			 ResultSet resultSet = statement.executeQuery("SELECT * FROM conferences WHERE id ="+id);
			 while(resultSet.next()){
	           id = resultSet.getInt(1);
	           String name = resultSet.getString(2);
	           int owner= resultSet.getInt(3);
	           String description = resultSet.getString(4);
	           String start = resultSet.getString(5);
	           String end = resultSet.getString(6);
	           String category = resultSet.getString(7);
	           String photo = resultSet.getString(8);
	           conference = new Conference(id, name, owner,description,start,end,category,photo);
	       	 }
			 }catch(Exception ex) {
				 ex.printStackTrace();
			 }
		 return conference;
	}
	
	public static ArrayList<Conference> getUserConferences(Connection conn,int owner) {
		ArrayList<Conference> conferences = new ArrayList<Conference>();
		try {
			 Statement statement = conn.createStatement();
			 ResultSet resultSet = statement.executeQuery("SELECT * FROM conferences WHERE owner ="+owner);
			 while(resultSet.next()){
	           int id = resultSet.getInt(1);
	           String name = resultSet.getString(2);
	           owner= resultSet.getInt(3);
	           String description = resultSet.getString(4);
	           String start = resultSet.getString(5);
	           String end = resultSet.getString(6);
	           String category = resultSet.getString(7);
	           String photo = resultSet.getString(8);
	           Conference conference = new Conference(id, name, owner,description,start,end,category,photo);
	           conferences.add(conference);
	       	 }
			 }catch(Exception ex) {
				 ex.printStackTrace();
			 }
		 return conferences;
	}
	
	public static void insertTese(Connection conn,Teses tese) throws IOException {
			String sql = "INSERT INTO teses (conference, user,text,status) Values (?, ?,?,?)";
		try(PreparedStatement preparedStatement = conn.prepareStatement(sql)){
			preparedStatement.setInt(1, tese.getConference());
			preparedStatement.setInt(2, tese.getUser());
			preparedStatement.setString(3, tese.getText());
			preparedStatement.setInt(4, tese.getStatus());
			preparedStatement.executeUpdate();
		}catch(Exception ex){
			ex.printStackTrace();
		}	
	}
	
	public static ArrayList<Teses> getAllTeses(Connection conn,int conf) throws IOException {
		ArrayList<Teses> teses = new ArrayList<Teses>();
		try {
			 Statement statement = conn.createStatement();
			 ResultSet resultSet = statement.executeQuery("Select A.*, B.name from teses A "
			 		+ "inner join users B "
			 		+ "WHERE A.user = B.id AND A.conference = "+conf +" AND A.status = 1");
			 while(resultSet.next()){
	           int id = resultSet.getInt(1);
	           conf = resultSet.getInt(2);
	           int user = resultSet.getInt(3);
	           String text = resultSet.getString(4);
	           int status = resultSet.getInt(5);
	           String name = resultSet.getString(6);
	           Teses tese = new Teses(id, conf, user,text,status,name);
	           teses.add(tese);
	       	 }
			 }catch(Exception ex) {
				 ex.printStackTrace();
			 }
		 return teses;
}
	
	public static ArrayList<Teses> getAllUserTeses(Connection conn,int user) throws IOException {
		ArrayList<Teses> teses = new ArrayList<Teses>();
		try {
			 Statement statement = conn.createStatement();
			 ResultSet resultSet = statement.executeQuery("Select A.*, B.name, B.start_date, B.end_date from teses A "
			 		+ "inner join conferences B "
			 		+ "WHERE A.conference = B.id AND A.user = "+user);
			 while(resultSet.next()){
	           int id = resultSet.getInt(1);
	           int conf = resultSet.getInt(2);
	           user = resultSet.getInt(3);
	           String text = resultSet.getString(4);
	           int status = resultSet.getInt(5);
	           String name = resultSet.getString(6);
	           String start = resultSet.getString(7);
	           String end = resultSet.getString(8);
	           Teses tese = new Teses(id, conf, user,text,status,name,start,end);
	           teses.add(tese);
	       	 }
			 }catch(Exception ex) {
				 ex.printStackTrace();
			 }
		 return teses;
}
	
	public static void updateTese(Connection conn,int id, int status) throws IOException {
        
    	try{
            String sql = "UPDATE teses SET status = ? WHERE id = ?";
            try(PreparedStatement preparedStatement = conn.prepareStatement(sql)){
                preparedStatement.setInt(1, status);
                preparedStatement.setInt(2, id);
                preparedStatement.executeUpdate();
            }
    		
    	}
    catch(Exception ex){
    		ex.printStackTrace();
    	}
	}
	
	public static void insertConference(Connection conn,Conference conf) throws IOException {
		String sql = "INSERT INTO conferences (name, owner,description,start_date,end_date,category,photo) Values (?,?,?,?,?,?,?)";
	try(PreparedStatement preparedStatement = conn.prepareStatement(sql)){
		preparedStatement.setString(1, conf.getName());
		preparedStatement.setInt(2, conf.getOwner());
		preparedStatement.setString(3, conf.getDescription());
		preparedStatement.setString(4, conf.getStart());
		preparedStatement.setString(5, conf.getEnd());
		preparedStatement.setString(6, conf.getCategory());
		preparedStatement.setString(7, conf.getPhoto());
		preparedStatement.executeUpdate();
	}catch(Exception ex){
		ex.printStackTrace();
		}	
	}
	
	
	public static void insertUser(Connection conn,User user) throws IOException {
		String sql = "INSERT INTO users (login, pass,name,email) Values (?,?,?,?)";
	try(PreparedStatement preparedStatement = conn.prepareStatement(sql)){
		preparedStatement.setString(1, user.getLogin());
		preparedStatement.setString(2, user.getPass());
		preparedStatement.setString(3, user.getName());
		preparedStatement.setString(4, user.getEmail());
		preparedStatement.executeUpdate();
	}catch(Exception ex){
		ex.printStackTrace();
		}	
	}
	
	public static User getUser(Connection conn,String login) {
		User user=null;
		try {
			 Statement statement = conn.createStatement();
			 ResultSet resultSet = statement.executeQuery("SELECT * FROM conferences WHERE login ="+login);
			 while(resultSet.next()){
			   int id = resultSet.getInt(1);
	           login = resultSet.getString(2);
	           String pass = resultSet.getString(3);
	           String name = resultSet.getString(4);
	           String email = resultSet.getString(5);
	           user = new User(id,login,pass,name,email);
	       	 }
			 }catch(Exception ex) {
				 ex.printStackTrace();
			 }
		 return user;
	}
	
}
