package com.DAO;

import com.entity.User;

public interface UserDAO {

    public boolean userRegister(User user);
    
    public users Login(String username, String password);
      
}

  
 