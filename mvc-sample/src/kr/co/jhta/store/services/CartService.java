package kr.co.jhta.store.services;

import java.util.List;

import kr.co.jhta.store.domains.CartItem;
import kr.co.jhta.store.repositories.CartDao;

public class CartService {

	private CartDao cartDao = new CartDao();
	
	// 장바구니 담기 서비스
	public void addCartItem (CartItem cartItem) throws Exception {
		
		List<CartItem> cartItems = cartDao.getCartItemByUserNo(cartItem.getUser().getNo());
		
		boolean isExist = false;
		
		
		for (CartItem cart : cartItems) {
			if (cart.getBook().getNo() == cartItem.getBook().getNo()) {
				isExist = true;
				cart.setAmount(cart.getAmount() + 1);
				cartDao.updateCartItem(cart);
			}
		}

		if(!isExist) {
			
			cartDao.insertCart(cartItem);
			
		}
		
		
	}
	
	// 지정된 사용자의 모든 장바구니 상품 정보를 반환한다.
	public List<CartItem> getAllMyCartItem(int userNo) throws Exception {
		return cartDao.getCartItemByUserNo(userNo);
	}
	
	// 장바구니 상품을 변경한다.
	public void updateCartItem(CartItem item) throws Exception {
		cartDao.updateCartItem(item);
	}
	
	// 장바구니 상품을 삭제한다.
	public void deleteCartItem(int cartNo) throws Exception {
		cartDao.deleteCartItem(cartNo);
	}
	
	// 장바구니 상품을 전체 삭제한다.
	public void deleteAllCartItem(int userNo) throws Exception {
		cartDao.deleteAllCartItem(userNo);
	}
	
}
