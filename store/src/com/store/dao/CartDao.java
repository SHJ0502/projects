package com.store.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.store.util.IbatisUtil;
import com.store.vo.CartItem;

public class CartDao {

	private static CartDao instance = new CartDao();
	private CartDao () {}
	public static CartDao getInstance() {
		return instance;
	}
	
	private SqlMapClient sqlmap = IbatisUtil.getSqlMap();
	
	public void insertCartItem(CartItem item) throws SQLException {
		sqlmap.insert("carts.insertCartItem", item);
	}
	
	public void updateCartItem(CartItem item) throws SQLException {
		sqlmap.update("carts.updateCartItem", item);
	}
	
	public void deleteCartItem(CartItem item) throws SQLException {
		sqlmap.delete("carts.deleteCartItem", item);
	} 
	
	public void deleteAllMyCart(int userNo) throws SQLException {
		sqlmap.delete("carts.deleteAllMyCart", userNo);
	}
	
	
	public CartItem getCartItem(CartItem item) throws SQLException {
		return (CartItem) sqlmap.queryForObject("carts.getCartItem", item);
	}
	
	@SuppressWarnings("unchecked")
	public List<CartItem> getCartItemsByUserNo(int userNo) throws SQLException {
		return sqlmap.queryForList("carts.getCartItemsByUserNo", userNo);
	}
}
