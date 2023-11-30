<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-image: url("./login.png");
            background-size: cover;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            display: flex;
            align-items: stretch;
            justify-content: center;
        }

        form {
            flex: 1;
            background-color: rgba(47, 49, 54, 0.99);
            padding: 20px;
            border-radius: 0px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
            transition: background-color 0.3s ease;
            margin-right: 10px;
        }

        form:hover {
            background-color: rgba(41, 43, 47, 0.99);
        }

        h1 {
            color: #fff;
            font-size: 24px;
            margin-bottom: 20px;
        }


        label {
            display: block;
            margin-bottom: 10px;
            font-size: 14px;
            text-align: left;
            color: #8E9297;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #484B51;
            border-radius: 4px;
            background-color: rgba(54, 57, 63, 0.6);
            color: #fff;
            transition: border-color 0.3s ease, background-color 0.3s ease, color 0.3s ease;
        }

        input:focus {
            border-color: #7289DA;
            background-color: rgba(64, 68, 75, 0.8);
            color: #fff;
        }

        button {
            background-color: #7289DA;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #677BC4;
        }

        p {
            margin-top: 15px;
            font-size: 14px;
            color: #8E9297;
        }

        .discord-logo {
            width: 50px;
            margin-bottom: 20px;
        }

        .qr-code {
            width: 350px; /* Adjust the width of the QR code */
            margin-left: -10px; /* Adjust the margin to move the image to the left */
        }
    </style>
</head>
<body>
<div class="container">
    <form method="post">
        <h1>Welcome back!</h1>
        <label>EMAIL OR PHONE NUMBER:
            <input type="text" name="login">
        </label>
        <br/>
        <label>PASSWORD:
            <input type="password" name="pass">
        </label>
        <br/>
        <button>login</button>
        <br/>
        <p>User valid status: <%=request.getAttribute("isLogPassValid")%></p>
    </form>
    <img class="qr-code" src="./qr.png" alt="QR Code">
</div>
</body>
</html>
