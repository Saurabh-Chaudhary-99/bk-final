package com.entity;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private int id; // You might need to add an ID if you have a primary key in your database
    private int userId; // Reference to the user's ID
    private List<CartItem> cartItems;

    public Cart(int id, int userId) {
        this.id = id;
        this.userId = userId;
        this.cartItems = new ArrayList<>();
    }

    // Getters and setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public List<CartItem> getCartItems() {
        return cartItems;
    }

    public void setCartItems(List<CartItem> cartItems) {
        this.cartItems = cartItems;
    }
}
