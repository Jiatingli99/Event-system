package serviceTest;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import service.UserService;

class UserServiceTest {

	UserService test;

	@BeforeEach
	void setUp() throws Exception {
		test = new UserService();
	}

	@Test
	void testRegister() throws Exception {
		test.register(null);
	}


	@Test
	void testLogin() {
		test.login(null, null);
	}

	@Test
	void testSelectById() {
		test.selectById(2);
	}

	@Test
	void testUpdateUserAddress() {
	test.updateUserAddress(null);
	}

	@Test
	void testUpdatePwd() {
		test.updatePwd(null);
	}

	@Test
	void testGetUserPage() {
		test.getUserPage(1);
	}

	@Test
	void testDelete() {
		test.delete(1);
	}

}
