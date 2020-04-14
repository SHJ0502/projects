package kr.co.jhta.store.repositories;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.co.jhta.store.domains.CartItem;
import kr.co.jhta.store.utils.IbatisUtil;

public class CartDao {

	private SqlMapClient sqlmap = IbatisUtil.getSqlMap();
	
	
	// CartItem을 추가하는 기능
	public void insertCart (CartItem cartItem) throws SQLException {
		sqlmap.insert("carts.insertCart", cartItem);
	}
	
	// 사용자의 모든 CartItem을 반환하는 기능
	@SuppressWarnings("unchecked")
	public List<CartItem> getCartItemByUserNo (int userNo) throws SQLException {
		return sqlmap.queryForList("carts.getCartItemByUserNo", userNo);
	}
	
	//  CartItem을 변경하는 기능
	public void updateCartItem(CartItem item) throws SQLException {
		sqlmap.update("carts.updateCartItem", item);
	}
	
	// CartItem 삭제 기능
	public void deleteCartItem(int cartNo) throws SQLException {
		sqlmap.delete("carts.deleteCartItem", cartNo);
	}
	
	public void deleteAllCartItem(int userNo) throws SQLException {
		sqlmap.delete("carts.deleteAllCartItem", userNo);
	}
}
