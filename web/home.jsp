<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.models.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <link href="/styles/style.css" rel="stylesheet">
</head>
<body>
    <header class="header content_width">
        <div class="logo">
            <p class="bold_text_logo">TASK MANAGER</p>
        </div>
        <div class="header_menu">
            <a href="#">All tasks</a>
        </div>
    </header>
    <div class="content_width">
        <button type="button" class="add_btn" id="openModal">
            <span>Add task</span>
        </button>
    </div>

    <div class="table content_width">
        <div class="table-row table-header">
            <div class="table-cell">ID</div>
            <div class="table-cell">Name</div>
            <div class="table-cell">Deadline</div>
            <div class="table-cell">Complete</div>
            <div class="table-cell">Details</div>
        </div>
        <%
            ArrayList<Task> tasks = (ArrayList<Task>) request.getAttribute("tasks");
            for (Task task : tasks) {
        %>
        <div class="table-row">
            <div class="table-cell"><%= task.getId() %></div>
            <div class="table-cell"><%= task.getName() %></div>
            <div class="table-cell"><%= task.getDeadlineDate() %></div>
            <div class="table-cell"><%= task.isCompleted() ? "Completed" : "Not Completed" %></div>
                <div class="table-cell">
                    <a class="detail_btn" href="/details?id=<%= task.getId()%>">
                        <span>Detail</span>
                    </a>
                </div>
        </div>
        <%
            }
        %>
    </div>
    <div id="modal" class="modal content_width">
        <div class="modal-content">
            <span class="close" id="closeModal">&times;</span>
            <h2 class="title_modal">New task</h2>
            <form action="/addTask" method="post">
                <div class="input-container">
                    <label for="name-input">Name:</label>
                    <input type="text" id="name-input" placeholder="Enter name task" name="name">

                    <label for="name-input">Description:</label>
                    <textarea type="text" id="description-input" placeholder="Enter description task" name="description"></textarea>

                    <label for="name-input">Deadline:</label>
                    <input type="date" id="deadline-input" placeholder="Enter deadline task" name="deadline">
                </div>

                <div class="button-container">
                    <button type="button" class="btn close-btn" id="closeButton">Закрыть</button>
                    <button type="submit" class="btn add-btn">Добавить</button>
                </div>
            </form>
        </div>
    </div>
    <script src="/js/script.js"></script>
</body>
</html>
