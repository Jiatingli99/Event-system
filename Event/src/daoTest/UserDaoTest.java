package daoTest;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import dao.UserDao;

class UserDaoTest {
	UserDao test;
	@BeforeEach
	void setUp() throws Exception {
		test = new UserDao();
	}

	@Test
	void testAddUser() throws Exception {
		test.addUser(null);
	}

	@Test
	void testIsUsernameExistN() throws Exception {
		test.isUsernameExist(null);
	}
	@Test
	void testIsUsernameExist() throws Exception {
		test.isUsernameExist("Li");
	}

	@Test
	void testIsEmailExistN() throws Exception {
		test.isEmailExist(null);
	}
	@Test
	void testIsEmailExist() throws Exception {
		test.isEmailExist("1234@gmail.com");
	}

	@Test
	void testSelectByUsernamePassword() throws Exception {
		test.selectByUsernamePassword(null, null);
	}

	@Test
	void testSelectByEmailPassword() throws Exception {
		test.selectByEmailPassword(null, null);
	}

	@Test
	void testSelectById() throws Exception {
		test.selectById(1);
	}

	@Test
	void testUpdateUserAddress() throws Exception {
		test.updateUserAddress(null);
	}

	@Test
	void testUpdatePwd() throws Exception {
		test.updatePwd(null);
	}

	@Test
	void testSelectUserCount() throws Exception {
		test.selectUserCount();
	}

	@Test
	void testSelectUserList() throws Exception {
		
	}

	@Test
	void testDelete() throws Exception {
		test.delete(4);
	}

}
