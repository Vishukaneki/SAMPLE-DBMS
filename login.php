<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page &#9819;</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Exo+2:ital,wght@0,100..900;1,100..900&display=swap');

        body {
            font-family: "Exo 2", sans-serif;
            background-color: rgb(226, 242, 225);
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
            background-color: #4caf50;
            padding: 10px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            margin: 10px 0;

        }

        .login-container button:hover {
            background-image: linear-gradient(90deg, rgba(2, 0, 36, 1) 0%, rgba(9, 34, 121, 1) 51%, rgba(0, 212, 255, 1) 100%);

        }

        .admin p {
            color: white;
        }

        #link {
            text-decoration: none;
            margin: 10px 0;
            color: #3693f6;
        }

        #link:hover {
            color: red;
            text-decoration: underline;

        }

        #admin_style {
            font-style: italic;
            display: inline;
        }

        .login-container button a {
            text-decoration: none;
            color: white;
        }
    </style>
</head>

<body>
    <div class="start">
        <div class="login-container">
            <h2>Login</h2>

            <?php
            if (isset($_GET['error']) && $_GET['error'] === '1') {
                echo '<p style="color: red;">Incorrect username or password</p>';
            }
            ?>
            <?php
            // Check if the "message" parameter is present in the URL
            if (isset($_GET['message'])) {
                $message = $_GET['message'];
                if ($message === 'already_registered') {
                    echo '<p style="color: red;">You are already registered. Kindly login.</p>';
                } elseif ($message === 'registration_successful') {
                    echo '<p style="color: green;">Registration successful.</p>';
                } elseif ($message === 'registration_error') {
                    echo '<p style="color: red;">Error occurred during registration.</p>';
                }
            }
            ?>
            <!-- Your login form goes here -->


            <form action="login_process.php" method="post">
                <label for="user">College ID</label>
                <input type="text" id="username" name="username" placeholder="Enter your college id" required />
                <label for="password">Password</label>
                <input type="password" id="password" placeholder="Enter your password" name="password" required />
                <button type="submit">Login</button>
            </form>
            <p class="admin" id="admin_style">Admin? &emsp; </p><a id="link" href="adminlogin.php">Click here!!</a>
        </div>
    </div>
</body>

</html>