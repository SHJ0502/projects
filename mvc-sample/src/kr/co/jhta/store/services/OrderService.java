package kr.co.jhta.store.services;

import java.util.List;

import kr.co.jhta.store.domains.Order;
import kr.co.jhta.store.domains.OrderItem;
import kr.co.jhta.store.repositories.OrderDao;

public class OrderService {

	private OrderDao orderDao = new OrderDao();
	
	public void addOrder (Order order) throws Exception {
		orderDao.insertOrder(order);
	}
	
	public void addOrderItem (OrderItem orderItem) throws Exception {
		orderDao.insertOrderItem(orderItem);
	}
	
			
	public int getOrderNo () throws Exception {
		return orderDao.getOrderNo();
	}
	
	public List<Order> getOrderItem (int userNo) throws Exception {
		List<Order> orders = orderDao.getOrderList(userNo);
		for(Order order : orders) {
			List<OrderItem> orderItems = orderDao.getOrderItemByOrderNo(order.getNo());
			order.setOrderItems(orderItems);
		}
		
		return orders;
	}
	
}
