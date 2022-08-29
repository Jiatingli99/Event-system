package serviceTest;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import service.TypeService;

class TypeServiceTest {

	TypeService test;

	@BeforeEach
	void setUp() throws Exception {
		test = new TypeService();
	}

	@Test
	void testGetAllType() throws Exception {
		test.GetAllType();
	}
	@Test
	void testSelectTypeNameByID() throws Exception {
		test.selectTypeNameByID(0);
	}
	@Test
	void testSelect() throws Exception {
		test.select(1);
	}

	@Test
	void testInsert() throws Exception {
		test.insert(null);
		
	}

	@Test
	void testUpdate() throws Exception {
		test.update(null);
	}

	@Test
	void testDelete() throws Exception {
		test.delete(2);
	}

}
