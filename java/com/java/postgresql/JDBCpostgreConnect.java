package com.java.postgresql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCpostgreConnect {

    private final String url = "jdbc:postgresql://localhost/bookeworm_db";
    private final String user = "postgres";
    private final String password = "saurabh";

    private void connect() {
        try (Connection connection = DriverManager.getConnection(url, user, password)) {
            if (connection != null) {
                System.out.println("Connected to PostgreSQL server");
                // Your code for database operations can go here
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Failed to connect to PostgreSQL server. Check your database URL, username, and password.");
        }
    }

    public static void main(String[] args) {
        JDBCpostgreConnect jdbcPostgreConnect = new JDBCpostgreConnect();
        jdbcPostgreConnect.connect();
    }
}
