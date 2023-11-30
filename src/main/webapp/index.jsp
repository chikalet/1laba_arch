<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css_first.css">
    <title>Discord Style</title>
    <style>
        body {
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #282b30; /* Discord's background color */
        }

        .container {
            text-align: center;
        }

        .enormous-button {
            padding: 20px 40px;
            font-size: 24px;
            background-color: #ff0000; /* Bright red color */
            color: #fff;
            text-decoration: none;
            border: 2px solid #fff;
            border-radius: 10px;
            margin-top: 25vh;
            height: 50vh;
            animation: pulse 1s infinite; /* Animation */
        }

        @keyframes pulse {
            0% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.2);
            }
            100% {
                transform: scale(1);
            }
        }
    </style>
</head>
<body>
<div class="container">
    <header class="header">
        <h1>Discord Style</h1>
    </header>
    <main class="main-content">
        <div class="channel-list">
            <h2>Channels</h2>
            <ul>
                <li>#general</li>
                <li>#random</li>
                <!-- Add more channels as needed -->
            </ul>
        </div>
        <div class="chat">
            <div class="message">
                <strong>User1:</strong> Hello, World!
            </div>
            <!-- Add more messages as needed -->
        </div>
    </main>
    <a class="enormous-button" href="login-user">Login user</a>
</div>
</body>
</html>
