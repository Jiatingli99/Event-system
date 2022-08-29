package daoTest;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import dao.TypeDao;

class TypeDaoTest {
	TypeDao test;
	@BeforeEach
	void setUp() throws Exception {
		test = new TypeDao();
	}

	@Test
	void testGetAllType() throws Exception {
		
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
		test.delete(1);
	}

}
