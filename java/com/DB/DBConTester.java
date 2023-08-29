package com.DB;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConTester {
	public static void main(String[] args) {
		try {

			Connection con = DBCon.getConnection();
			con.setSchema( "public" );

			Statement stmt = con.createStatement();
			String str_sql = "SELECT * FROM books";
			ResultSet rs = stmt.executeQuery( str_sql );
			while ( rs.next() ) {
				String bookid = rs.getString("book_id");
				String title = rs.getString("title");
				double price = rs.getDouble("price" );
				System.out.println( bookid +" " +  title + " " + price);
			}
		}
		catch (SQLException e) {
			System.out.println("Error Executing SQL statement: " + e.getMessage());
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}