package serviceTest;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import service.OrderService;

class OrderServiceTest {
	
	OrderService test;
	@BeforeEach
	void setUp() throws Exception {
		test = new OrderService();
	}

	@Test
	void testAddOrder() throws Exception {
		test.addOrder(null);
	}

	@Test
	void testSelectAll() throws Exception {
		test.selectAll(1);
	}

	@Test
	void testGetOrderPage() throws Exception {
		test.getOrderPage(1, 1);
	}

	@Test
	void testUpdateStatus() throws Exception {
		test.updateStatus(2, 0);
	}

	@Test
	void testDelete() throws Exception {
		test.delete(2);
	}

}
