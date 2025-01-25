<%@ page import="kz.bitlab.models.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details</title>
    <link href="/styles/style.css" rel="stylesheet">
</head>
<body>
    <header class="header content_width">
        <div class="logo">
            <p class="bold_text_logo">TASK MANAGER</p>
        </div>
        <div class="header_menu">
            <a href="/home">All tasks</a>
        </div>
    </header>
    <%
        Task task = (Task) request.getAttribute("task");
    %>
    <div class="details_content content_width">
        <form action="/updateTask" method="post">
            <div class="input-container">
                <label for="name-input">Name:</label>
                <input type="text" id="name-input" name="name" value="<%= task.getName()%>">

                <input type="text" value="<%= task.getId()%>" style="display: none" name="id">

                <label for="name-input">Description:</label>
                <textarea type="text" id="description-input" name="description"><%= task.getDescription()%></textarea>

                <label for="name-input">Deadline:</label>
                <input type="text" id="deadline-input" name="deadline" value="<%= task.getDeadlineDate()%>">

                <label for="options-select">Complete:</label>
                <select id="options-select" name="complete">
                    <option value="true" <%= task.isCompleted() ? "selected" : "" %>>Complete</option>
                    <option value="false" <%= !task.isCompleted() ? "selected" : "" %>>Not complete</option>
                </select>

                <div class="button-container-details">
                    <button type="button" class="btn delete-btn" id="deleteBtn">Delete</button>
                    <button type="submit" class="btn save-btn">Save</button>
                </div>
            </div>
        </form>
    </div>


        <div id="modalWaring" class="modal-waring">
            <form action="/deleteTask" method="post">
                <div class="modal-content-waring">
                    <span class="close" id="closeBtn">&times;</span>
                    <p>Are you sure?</p>
                    <input type="text" value="<%= task.getId()%>" style="display: none" name="id">
                    <div class="button-container-waring">
                        <button type="button" class="btn" id="cancelBtn">Close</button>
                        <button type="submit" class="btn" id="saveBtn">Save Changes</button>
                    </div>
                </div>
            </form>
        </div>

    <script src="/js/script.js"></script>
</body>
</html>
