package daoTest;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import dao.OrderDao;
import model.Goods;
import model.Order;
import model.OrderItem;

class OrderDaoTest {
	OrderDao test;

	@BeforeEach
	void setUp() throws Exception {
		test = new OrderDao();
	}

	@Test
	void testInsertOrder() throws Exception {
		test.insertOrder(null, null);
	}

	@Test
	void testGetLastInsertId() throws Exception {
		test.getLastInsertId(null);
	}

	@Test
	void testInsertOrderItem() throws Exception {
		test.insertOrderItem(null, null);
	}

	@Test
	void testSelectAll() throws Exception {
		List<Order> list = test.selectAll(1);
		assertEquals(1, list.size());
	}
	@Test
	void testSelectAllItem() throws Exception {
		List<OrderItem> list = test.selectAllItem(1);
		assertEquals(1, list.size());
	}

	@Test
	void testGetOrderCount0() throws Exception {
		test.getOrderCount(0);
	}
	@Test
	void testGetOrderCount() throws Exception {
		test.getOrderCount(1);
	}

	@Test
	void testSelectOrderList0() throws Exception {
	List<Order>list = test.selectOrderList(0, 1, 1);
	assertEquals(1, list.size());
	}
	@Test
	void testSelectOrderList() throws Exception {
	List<Order>list = test.selectOrderList(1, 1, 1);
	assertEquals(1, list.size());
	}

	@Test
	void testUpdateStatus() throws Exception {
		test.updateStatus(1, 0);
	}

	@Test
	void testDeleteOrder() throws Exception {
		test.deleteOrder(null,1);
	}

	@Test
	void testDeleteOrderItem() throws Exception {
		test.deleteOrderItem(null, 1);
	}

}
