package ru.stankin.uits.lec3.servlets;

import ru.stankin.uits.lec3.database.User;
import ru.stankin.uits.lec3.database.UserTable;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.util.List;
import java.util.Map;

@WebServlet(name = "SubmitUserServlet", value = "/add-user")
public class SubmitUserServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        User admin = new User("admin", "admin");
        UserTable.addUser(admin);

        // Initialize the user list and set it as a servlet context attribute
        Map<String, User> users = UserTable.getAllUsers();
        getServletContext().setAttribute("userList", users);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/add-user.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String login = req.getParameter("login");
        String password = req.getParameter("pass");

        User user = new User(login, password);

        boolean submitFlag = UserTable.addUser(user);

        // Update the user list in the servlet context
        Map<String, User> users = UserTable.getAllUsers();
        getServletContext().setAttribute("userList", users);

        req.setAttribute("submitFlag", submitFlag);
        req.getRequestDispatcher("views/add-user.jsp").forward(req, resp);
    }
}