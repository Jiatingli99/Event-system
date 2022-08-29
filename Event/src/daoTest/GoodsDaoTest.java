package daoTest;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.SQLException;
import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import dao.GoodsDao;
import model.Goods;

class GoodsDaoTest {

	GoodsDao test;

	@BeforeEach
	void setUp() throws Exception {
		test = new GoodsDao();
	}

	@Test
	void testSelectGoodsByTypeID() throws SQLException {
		List<Goods> list = test.selectGoodsByTypeID(1, 1, 10);
		assertEquals(1, list.size());

	}

	@Test
	void testSelectGoodsByTypeIDby0() throws SQLException {
		List<Goods> list = test.selectGoodsByTypeID(0, 1, 10);
		assertEquals(1, list.size());
	}

	@Test
	void testGetCountOfGoodsByTypeID() throws SQLException {
		test.getCountOfGoodsByTypeID(0);
	}

	@Test
	void testGetCountOfGoodsByTypeIDnot0() throws SQLException {
		test.getCountOfGoodsByTypeID(0);
	}
	@Test
	void testSelectGoodsbyRecommend()throws SQLException {
		List<Goods> list = test.selectGoodsbyRecommend(1, 2, 4);
		assertEquals(3, list.size());
	}

	@Test
	void testGetRecommendCountOfGoodsByTypeID() throws SQLException {
		test.getRecommendCountOfGoodsByTypeID(0);
	}
	@Test
	void testGetRecommendCountOfGoodsByTypeID0() throws SQLException {
		test.getRecommendCountOfGoodsByTypeID(0);
	}
	@Test
	void testGetGoodsById() throws SQLException {
		test.getGoodsById(0);
	}

	@Test
	void testGetSearchCount() throws SQLException {
		test.getSearchCount(null);
	}

	@Test
	void testSelectSearchGoods() throws SQLException {
		List<Goods> list = test.selectSearchGoods(null, 2, 3);
		assertEquals(1, list.size());
	}

	@Test
	void testIsScroll() throws SQLException {
		test.isScroll(null);
	}

	@Test
	void testIsHot() throws SQLException {
		test.isHot(null);
	}

	@Test
	void testIsNew() throws SQLException {
		test.isNew(null);
	}

	@Test
	void testAddRecommend() throws SQLException {
		test.addRecommend(1, 2);
	}

	@Test
	void testRemoveRecommend() throws SQLException {
		test.removeRecommend(2, 1);
	}

	@Test
	void testInsert() throws SQLException {
		test.insert(null);
	}

	@Test
	void testUpdate() throws SQLException {
		test.update(null);
	}

	@Test
	void testDelete() throws SQLException {
		test.delete(2);
	}

}
