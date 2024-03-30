<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login Page</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Exo+2:ital,wght@0,100..900;1,100..900&display=swap');

        body {
            font-family: "Exo 2", sans-serif;
            background-color: rgb(222, 227, 226);
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 70vh;
            margin: 0;
            color: black;
        }

        .login-container {
            background-color: white;
            max-width: 5in;
            width: 90%;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            text-align: left;
        }

        .login-container h2 {
            font-size: 24px;
            margin: 0 auto;
            margin-bottom: 20px;
            text-align: center;
        }

        .login-container label {
            display: block;
            margin: 10px 0;
            align-items: left;
        }

        .login-container input {
            display: block;
            margin: 10px 0;
        }

        .login-container input {
            width: 95%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 10px;
            margin: 10px 0;
        }

        .login-container button {
            width: 100%;
            background-color: #4CAF50;
            padding: 10px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            margin: 10px 0;
        }

        .login-container button:hover {
            background-color: #7d806f;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>

<body>
    <div class="start">
        <div class="login-container">
            <h2>Admin Login</h2>
            <?php
            if (isset($_GET['error']) && $_GET['error'] === '1') {
                echo '<p style="color: red;">Incorrect username or password</p>';
            }
            ?>
            <form action="admin_login_process.php" method="post">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" placeholder="Enter your username" required />

                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>

                <button type="submit">Login</button>
            </form>
        </div>
    </div>

</body>

</html>