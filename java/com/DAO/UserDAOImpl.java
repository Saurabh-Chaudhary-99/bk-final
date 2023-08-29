package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.User;

public class UserDAOImpl implements UserDAO{

    private Connection conn;
public boolean f;
    
    public UserDAOImpl(Connection conn) {
        super();
        this.conn = conn;
    }

	@Override
	public boolean userRegister(User user) {
     this.f=false;
	try {
		String sql="insert into users(name,email,phone,password)values(?,?,?,?)";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1,user.getName());
		ps.setString(2,user.getEmail());
		ps.setString(3,user.getPhno());
		ps.setString(4,user.getPassword());
		
		int i=ps.executeUpdate();
		if(i==1)
		{
			this.f=true;
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
		return false;
	}

	@Override
	public UserDAO Login(String username, String password) {
	User us=null;
		
		try {
			String sql="select *from users where username=? and password=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,username);
			ps.setString(2,password);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				us=new User();
				us.setId(rs.getInt(1));
				us.setName(rs.getString(2));
				us.setEmail(rs.getString(3));
				us.setPhno(rs.getString(4));
				us.setAddress(rs.getString(5));
				us.setPassword(rs.getString(6));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return (UserDAO) us;
	}

 
    
    
    
}