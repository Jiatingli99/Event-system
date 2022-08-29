package utilsTest;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import utils.PriceUtil;

class PriceUtilTest {

	PriceUtil test;
	@BeforeEach
	void setUp() throws Exception {
		test=new PriceUtil();
	}

	@Test
	void testAddFloatFloat() {
test.add(0, 0);
	}

	@Test
	void testAddDoubleDouble() {
		double a=0,b=1;
test.add(a,b);
	}

	@Test
	void testSubtractFloatFloat() {
test.subtract(0, 0);
	}

	@Test
	void testSubtractDoubleDouble() {
		double a=0,b=1;
test.subtract(a,b);
	}

}
