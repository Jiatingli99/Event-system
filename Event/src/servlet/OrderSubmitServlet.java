package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "order_submit",urlPatterns = "/order_submit")
public class OrderSubmitServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getSession().getAttribute("user")!=null) {
            request.getRequestDispatcher("/order_submit.jsp").forward(request, response);
        }else {
            request.setAttribute("failMsg", "Please log in before submitting your registration！");
            request.getRequestDispatcher("/user_login.jsp").forward(request, response);
        }
    }
}
