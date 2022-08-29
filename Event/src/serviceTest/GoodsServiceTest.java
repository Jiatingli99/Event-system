package serviceTest;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;
import java.util.Map;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import service.GoodsService;

class GoodsServiceTest {
	GoodsService test;

	@BeforeEach
	void setUp() throws Exception {
		test = new GoodsService();
	}

	@Test
	void testGetGoodsList() throws Exception {
		List<Map<String, Object>> list = test.getGoodsList(0);
		assertEquals(1, list.size());
	}


	

	@Test
	void testGetScrollGood() throws Exception {
		test.getScrollGood();
	}

	@Test
	void testSelectGoodsByTypeID() throws Exception {
		test.selectGoodsByTypeID(1, 1, 1);
	}

	@Test
	void testSelectPageByTypeID() throws Exception {
		test.selectPageByTypeID(0, 1);
	}

	@Test
	void testGetGoodsRecommendPage() throws Exception {
		test.getGoodsRecommendPage(1, 1);
	}

	@Test
	void testGetGoodsById() throws Exception {
		test.getGoodsById(1);
	}

	@Test
	void testGetSearchGoodsPage() throws Exception {
		test.getSearchGoodsPage(null, 0);
	}

	@Test
	void testAddRecommend() throws Exception {
	test.addRecommend(2, 1);
	}

	@Test
	void testRemoveRecommend() throws Exception {
		test.removeRecommend(1, 0);
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
