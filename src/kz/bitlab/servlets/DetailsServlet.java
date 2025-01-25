package kz.bitlab.servlets;

import kz.bitlab.kz.bitlab.db.DBManager;
import kz.bitlab.models.Task;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/details")
public class DetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.parseLong(req.getParameter("id"));
        Task task = DBManager.getTaskById(id);

        req.setAttribute("task", task);

        req.getRequestDispatcher("/details.jsp").forward(req, resp);
    }
}

