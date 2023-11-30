<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Discord Clock</title>
  <style>
    body {
      font-family: 'Arial', sans-serif;
      background-color: #36393f;
      color: #fff;
      margin: 0;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }

    .discord-container {
      display: flex;
      flex-direction: column;
      background-color: #2f3136;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      max-width: 800px;
      width: 100%;
      overflow: hidden;
      margin-bottom: 20px;
    }

    .left-panel, .center-panel, .right-panel {
      flex: 1;
      padding: 20px;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
    }

    .message {
      display: flex;
      margin-bottom: 15px;
    }

    .avatar {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      margin-right: 10px;
    }

    .content {
      flex: 1;
    }

    .username {
      font-weight: bold;
      margin-bottom: 5px;
    }

    .text {
      margin: 0;
    }

    .clock {
      font-size: 24px;
      text-align: center;
      margin-bottom: 20px;
    }

    .discord-info {
      margin-top: 20px;
    }

    .info-section {
      margin-bottom: 20px;
    }

    .info-section h2 {
      margin-bottom: 10px;
    }

    ul {
      list-style: none;
      padding: 0;
      margin: 0;
    }

    ul li {
      margin-bottom: 5px;
    }

    .button-container {
      text-align: center;
      margin-top: 20px;
    }

    .discord-button {
      display: inline-block;
      padding: 10px 20px;
      background-color: #7289da;
      color: #fff;
      text-decoration: none;
      border-radius: 5px;
      transition: background-color 0.3s;
      cursor: pointer;
    }

    .discord-button:hover {
      background-color: #677bc4;
    }
  </style>
</head>
<body>
<div class="discord-container">
  <div class="left-panel">
    <!-- Left Panel - Fake Chat Messages -->
    <div class="message">
      <img src="https://via.placeholder.com/40" alt="Avatar" class="avatar">
      <div class="content">
        <div class="username">User1</div>
        <p class="text">Hello there!</p>
      </div>
    </div>

    <div class="message">
      <img src="https://via.placeholder.com/40" alt="Avatar" class="avatar">
      <div class="content">
        <div class="username">User2</div>
        <p class="text">Hi! How are you?</p>
      </div>
    </div>
    <!-- Add more fake chat messages as needed -->
  </div>

  <div class="center-panel">
    <!-- Center Panel - Clock -->
    <div class="clock">
      Current server time: <%=request.getAttribute("date")%>
    </div>
  </div>

  <div class="right-panel">
    <!-- Right Panel - More Discord Features -->
    <div class="discord-info">
      <div class="info-section">
        <h2>Server Members</h2>
        <ul>
          <li>User1</li>
          <li>User2</li>
          <!-- Add more members as needed -->
        </ul>
      </div>

      <div class="info-section">
        <h2>Server Info</h2>
        <p>Members: 2</p>
        <p>Channels: 3</p>
      </div>
    </div>
  </div>
</div>

<div class="button-container">
  <!-- Button to go to another servlet -->
  <a href="add-user" class="discord-button">Manage Users</a>
</div>
</body>
</html>
