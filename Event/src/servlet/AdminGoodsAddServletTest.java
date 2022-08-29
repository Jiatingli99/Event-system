package servlet;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito.*;

class AdminGoodsAddServletTest {
	AdminGoodsAddServlet test;
	@BeforeEach
	void setUp() throws Exception {
		test=new AdminGoodsAddServlet();
	}

	@Test
	void testDoGetHttpServletRequestHttpServletResponse() throws ServletException, IOException{
		 HttpServletRequest request = mock(HttpServletRequest.class);
		    HttpServletResponse response = mock(HttpServletResponse.class);

		    // mock the returned value of request.getParameterMap()
		    when(request.getParameter("firstName")).thenReturn("Mockito");
		    when(request.getParameter("lastName")).thenReturn("Test");
test.doGet(request, response);
	}

	@Test
	void testDoPostHttpServletRequestHttpServletResponse() throws ServletException, IOException{
		 HttpServletRequest request = mock(HttpServletRequest.class);
		    HttpServletResponse response = mock(HttpServletResponse.class);

		    // mock the returned value of request.getParameterMap()
		    when(request.getParameter("firstName")).thenReturn("Mockito");
		    when(request.getParameter("lastName")).thenReturn("Test");
		test.doPost(request, response);
	}

}
