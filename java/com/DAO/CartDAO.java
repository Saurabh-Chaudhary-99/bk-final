package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.entity.Cart;
import com.entity.CartItem;

public class CartDAO {

    private Connection conn;

    public CartDAO(Connection conn) {
        this.conn = conn;
    }

    // Method to fetch a cart by user ID
    public Cart getCartByUserId(int userId) {
        String cartQuery = "SELECT * FROM carts WHERE user_id = ?";
        String cartItemQuery = "SELECT * FROM cart_items WHERE cart_id = ?";

        try (PreparedStatement cartPs = conn.prepareStatement(cartQuery);
             PreparedStatement cartItemPs = conn.prepareStatement(cartItemQuery)) {

            cartPs.setInt(1, userId);
            ResultSet cartRs = cartPs.executeQuery();

            if (cartRs.next()) {
                int cartId = cartRs.getInt("id");
                Cart cart = new Cart(cartId, userId);
                cartItemPs.setInt(1, cartId);
                ResultSet cartItemRs = cartItemPs.executeQuery();

                while (cartItemRs.next()) {
                    int cartItemId = cartItemRs.getInt("id");
                    int bookId = cartItemRs.getInt("book_id");
                    int quantity = cartItemRs.getInt("quantity");
                    cart.getCartItems().add(new CartItem(cartItemId, cartId, bookId, quantity));
                }

                return cart;
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Log or handle the exception
        }

        return null; // No cart found for the user
    }

    // Method to add a new cart item to the database
    public boolean addCartItem(CartItem cartItem) {
        String query = "INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (?, ?, ?)";

        try (PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, cartItem.getCartId());
            ps.setInt(2, cartItem.getBookId());
            ps.setInt(3, cartItem.getQuantity());

            int rowsInserted = ps.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace(); // Log or handle the exception
            return false;
        }
    }

    // Add more methods as needed for your project (updateCartItem, deleteCartItem, etc.)
}
