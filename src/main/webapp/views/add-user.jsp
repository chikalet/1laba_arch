<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="ru.stankin.uits.lec3.database.User" %>
<%@ page import="javax.servlet.ServletContext" %>
<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submit</title>
    <style>
        body {
            background-color: #36393f;
            color: #fff;
            font-family: 'Arial', sans-serif;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            overflow: hidden;
        }

        form {
            background-color: #2f3136;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
            animation: rotateIn 5s infinite;
        }

        h1 {
            color: #7289da;
        }

        label {
            display: block;
            margin: 15px 0;
        }

        input {
            width: calc(100% - 20px);
            padding: 8px;
            margin-top: 5px;
            box-sizing: border-box;
            background-color: #40444b;
            border: 1px solid #36393f;
            color: #fff;
            border-radius: 4px;
        }

        button {
            background-color: #7289da;
            color: #fff;
            padding: 12px 24px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #677bc4;
        }

        p {
            margin-top: 20px;
        }

        .button-container {
            text-align: right;
            margin-top: 20px;
        }

        a {
            text-decoration: none;
            display: block;
            background-color: red; /* Paint it red */
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            position: fixed;
            top: 10px;
            right: 10px;
            transition: color 0.3s;
        }

        a:hover {
            background-color: #cc0000;
        }

        @keyframes rotateIn {
            0%, 100% {
                transform: rotate(0deg);
            }
            25% {
                transform: rotate(5deg);
            }
            50% {
                transform: rotate(-5deg);
            }
            75% {
                transform: rotate(3deg);
            }
        }

        .user-list-container {
            max-height: 400px; /* Set a maximum height for the scrollable container */
            overflow-y: auto; /* Enable vertical scrolling */
            margin-top: 20px;
            margin-left: 100px;
        }
    </style>
</head>
<body>
<form id="submitForm" method="post" onclick="stopAnimation()">
    <h1>Submit page!</h1>
    <label>Login:
        <input type="text" name="login">
    </label>
    <br/>
    <label>Password:
        <input type="password" name="pass">
    </label>
    <br/>
    <button>Submit</button>
    <br/>
    <p>User submit status: <%=request.getAttribute("submitFlag")%></p>
    <br/>
</form>
<div class="button-container">
    <a href="login-user">Heck, go back</a>
</div>

<div class="user-list-container">
    <h2>Registered Users</h2>
    <%
        // Retrieve the map of registered users from the application scope
        ServletContext application1 = request.getServletContext();
        Map<String, User> users = (Map<String, User>) application1.getAttribute("userList");
        if (users != null && !users.isEmpty()) {
            for (Map.Entry<String, User> entry : users.entrySet()) {
                User user = entry.getValue();
    %>
    <p>Login: <%= user.getLogin() %></p>
    <p>Password: <%= user.getPass() %></p>
    <hr/>
    <%
        }
    } else {
    %>
    <p>No registered users yet.</p>
    <%
        }
    %>
</div>


<script>
    function stopAnimation() {
        var form = document.getElementById("submitForm");
        form.style.animation = "none"; // Set animation to none
    }
</script>

</body>
</html>
