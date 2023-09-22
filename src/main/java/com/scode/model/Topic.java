package com.scode.model;

import java.sql.*;
import java.util.ArrayList;

public class Topic {
	private int id;
	private String topic;
	private int nextNumber;

	private Connection con;
	private PreparedStatement stmt;
    private static ArrayList<Integer> al;
//	System.out.println(2);
	public Topic() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/jam", "root", "");
			stmt = con.prepareStatement("select topic from topics where id = ?");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
//		System.out.println(1);
	}
	public static void init() {
		al = new ArrayList<Integer>();
		al.add(1);
	}
	public String getTopic(int id) {
		String topic = null;
		try {
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				topic = rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return topic;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTopic() {
		return this.topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public int getNextNumber() {
		while(true) {
			nextNumber = (int)(Math.random()*(70-1+1)+1);  
			if(al.size() == 70)
				break;
			if(!al.contains(nextNumber)) {
				al.add(nextNumber);
				break;
			}

		}
		return nextNumber;
	}

}
