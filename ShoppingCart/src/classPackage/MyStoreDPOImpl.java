package classPackage;

import interfacePackage.MyStoreDPO;

import java.sql.*;
import java.util.ArrayList;


public class MyStoreDPOImpl implements MyStoreDPO{
	Connection con;
	Integer count=0;
	Connection con2;
	Connection con3;
	String st = null;
	public static String name = "";
	public String getPass(String username) {
		// TODO Auto-generated method stub
		
		try{
			//loading driver
			Class.forName("com.mysql.jdbc.Driver");

			//creating connection with the database
			con = DriverManager.getConnection ("jdbc:mysql://localhost/aniDatabase","root","root");

			//return con;
			PreparedStatement ps =con.prepareStatement("select name,password from user where UserName=?");
			ps.setString(1, username);

			ResultSet rs =ps.executeQuery();
			while(rs.next()){
				st = rs.getString("password");
				name = rs.getString("name");
			}
			rs.close();
		}
		catch(Exception e) {
			e.printStackTrace(); 
			//return null;
		}
		return st;
		
	}
	
	public ArrayList<SQLTable> setArray() {
		// TODO Auto-generated method stub
		
		try{

			//return con;
			Class.forName("com.mysql.jdbc.Driver");

			//creating connection with the database
			con2 = DriverManager.getConnection ("jdbc:mysql://localhost/aniDatabase","root","root");

			PreparedStatement ps2 = con2.prepareStatement("select * from Item");
			ResultSet arr = ps2.executeQuery();
			ArrayList<SQLTable> printList = new ArrayList<SQLTable>();
			while (arr.next()){
				SQLTable obj = new SQLTable();
				obj.itemN = arr.getString(1);
				obj.itemD = arr.getString(2);
				obj.itemP = arr.getString(4);
				printList.add(obj);
				//System.out.println(arr.getString(1));
			}
			arr.close();
			return printList;
		}
		catch(Exception e) {
			e.printStackTrace(); 
			
		}
		//return null;
		return null;
		
	}
	public void createUser(String createUserName, String createPassword, String createName) {
		// TODO Auto-generated method stub
		
		try{
			//loading driver
			Class.forName("com.mysql.jdbc.Driver");

			//creating connection with the database
			con3 = DriverManager.getConnection ("jdbc:mysql://localhost/aniDatabase","root","root");
			
			//return con;
			PreparedStatement ps3 =con3.prepareStatement("INSERT INTO user (UserName, Password, Name) VALUES (?, ?, ?)");
			ps3.setString(1, createUserName);
			ps3.setString(2, createPassword);
			ps3.setString(3, createName);
			ps3.executeUpdate();
			con3.close();
		}
		catch(Exception e) {
			e.printStackTrace(); 
			//return null;
		}
		
	}
	
	
}