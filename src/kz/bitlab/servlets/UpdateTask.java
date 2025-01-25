package kz.bitlab.servlets;

import kz.bitlab.kz.bitlab.db.DBManager;
import kz.bitlab.models.Task;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/updateTask")
public class UpdateTask extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.parseLong(req.getParameter("id"));
        String name = req.getParameter("name");
        String description = req.getParameter("description");
        String deadline = req.getParameter("deadline");
        String complete = req.getParameter("complete");

        System.out.println("id ==" + id + " name == " + name + " Des== " + description + " Date == " + deadline + " complete ==" + complete);

        Task task = DBManager.getTaskById(id);
        if (task != null){
            task.setName(name);
            task.setDescription(description);
            task.setDeadlineDate(deadline);
            task.setCompleted(Boolean.parseBoolean(complete));
            DBManager.updateTask(task);
        }

        resp.sendRedirect("/home");

    }
}
