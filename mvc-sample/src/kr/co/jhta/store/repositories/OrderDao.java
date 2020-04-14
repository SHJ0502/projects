package kr.co.jhta.store.repositories;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.co.jhta.store.domains.Order;
import kr.co.jhta.store.domains.OrderItem;
import kr.co.jhta.store.utils.IbatisUtil;

public class OrderDao {

	private SqlMapClient sqlmap = IbatisUtil.getSqlMap();
	
	public void insertOrder(Order order) throws SQLException {
		sqlmap.insert("orders.insertOrder", order);
	}
	
	public void insertOrderItem(OrderItem orderItem) throws SQLException {
		sqlmap.insert("orders.insertOrderItem", orderItem);
	}
	
	public int getOrderNo () throws SQLException {
		return (Integer) sqlmap.queryForObject("orders.getOrderNo");
	}
	
	public Order getOrderByNo (int orderNo) throws SQLException {
		return (Order) sqlmap.queryForObject("orders.getOrderByNo", orderNo);
	}
	
	@SuppressWarnings("unchecked")
	public List<Order> getOrderList (int userNo) throws SQLException {
		return sqlmap.queryForList("orders.getOrderList", userNo);
	}
	@SuppressWarnings("unchecked")
	public List<OrderItem> getOrderItemByOrderNo (int orderNo) throws SQLException {
		return sqlmap.queryForList("orders.getOrderItemByOrderNo", orderNo);
	}

}
