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
import java.util.Date;

@WebServlet(name = "LoginUserServlet", value = "/login-user")
public class LoginUserServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        User admin = new User("admin", "admin");
        UserTable.addUser(admin);
        User admin2 = new User("Harsiev", "1");
        UserTable.addUser(admin2);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/login-user.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String login = req.getParameter("login");
        String password = req.getParameter("pass");

        boolean isLogPassValid = UserTable.checkPass(login, password);

        if (isLogPassValid) {
            routing(req, resp, login);
        } else {
            req.setAttribute("isLogPassValid", isLogPassValid);
            req.getRequestDispatcher("views/login-user.jsp").forward(req, resp);
        }
    }

    private static void routing(HttpServletRequest req, HttpServletResponse resp, String login) throws ServletException, IOException {
        Date date = new Date();
        req.setAttribute("date", date.toString());
        req.getRequestDispatcher("views/date-time.jsp").forward(req, resp);
//            resp.sendRedirect(req.getContextPath()+"/date-time");

    }
}
