package ru.stankin.uits.lec3.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "DateTimeServlet", value =  "/date-time")
public class DateTimeServlet extends HttpServlet {
    private Date date;

    @Override
    public void init() throws ServletException {
        super.init();
        date = new Date();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("date", date.toString());
        req.getRequestDispatcher("views/date-time.jsp").forward(req, resp);
    }
}
