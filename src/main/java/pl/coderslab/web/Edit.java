package pl.coderslab.web;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Edit", value = "/user/edit")
public class Edit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        if(id == null){
            getServletContext().getRequestDispatcher("/users/incorrect.jsp").forward(request, response);

        }else {
            UserDao userDao = new UserDao();
            User read = userDao.read(Integer.parseInt(id));
            request.setAttribute("user", read);
            getServletContext().getRequestDispatcher("/users/edit.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("/user/list");
    }
}