package com.entity;

public class CartItem {
    private int id; // You might need to add an ID if you have a primary key in your database
    private int cartId; // Reference to the cart's ID
    private int bookId; // Reference to the book's ID
    private int quantity;

    public CartItem(int id, int cartId, int bookId, int quantity) {
        this.id = id;
        this.cartId = cartId;
        this.bookId = bookId;
        this.quantity = quantity;
    }

    // Getters and setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
