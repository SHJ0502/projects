package kr.co.jhta.store.domains;

public class OrderItem {
	private int orderNo;
	private Book book;
	private int amount;
	private int orderPrice;
	
	public OrderItem() {}

	public int getNo() {
		return orderNo;
	}

	public void setNo(int no) {
		this.orderNo = no;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getOderPrice() {
		return orderPrice;
	}

	public void setOderPrice(int oderPrice) {
		this.orderPrice = oderPrice;
	}
	
	
}
