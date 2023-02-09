<?php
    session_start();
    // connect to the database
    include 'config.php';

    if(isset($_POST['username_or_email']) && isset($_POST['password'])){
        $username_or_email = mysqli_real_escape_string($db, $_POST['username_or_email']);
        $password = mysqli_real_escape_string($db, $_POST['password']);

        $stmt = mysqli_prepare($db, "SELECT * FROM registration WHERE username_or_email = ?");
        mysqli_stmt_bind_param($stmt, "s", $username_or_email);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);

        if ($row && password_verify($password, $row['password'])){

            $_SESSION['username_or_email'] = $username_or_email;
            echo "<p class='success'>Vous êtes connecté</p>";
        }else{
            echo "<p class='error'>L'identifiant ou le mot de passe saisi est incorrect.</p>";
        }
    }
?>


<html>
<head>
<title>Login</title>
<style>

.success {
    font-weight: bold;
    font-size: larger;
}

.error {
    font-weight: bold;
    font-size: larger;
}

.container {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.form-signin {
  width: 400px;
  margin: 30px auto;
  text-align: center;
}

.input-group {
  width: 100%;
  display: flex;
  flex-direction: column;
  margin-bottom: 20px;
}

input[type="text"],
input[type="password"] {
  width: 100%;
  padding: 10px;
  font-size: 16px;
  margin-bottom: 20px;
}

input[type="submit"],
input[type="reset"],
.btn {
  width: 100%;
  padding: 10px;
  font-size: 16px;
  margin-bottom: 20px;
}

.buttons {
  display: flex;
  justify-content: space-between;
  width: 100%;
}
</style>
</head>
<body>
<div class="container">
<img src="logo.png" alt="Logo" alt="Your Logo" width="100" height="100">
<form class="form-signin" method="POST" name="login" action="" onsubmit="return validateForm()">
        <h2 class="form-signin-heading">Se connecter</h2>
        <div class="input-group">
	        <span class="input-group-addon" id="basic-addon1">Identifiant</span>
	        <input type="text" name="username_or_email" id="username_or_email" class="form-control" placeholder="Username or Email" required>
	    </div>
        <br>
        <label for="inputPassword" class="sr-only">Mot de passe</label>
        <input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
        <br>
        <div class="buttons">
            <input name="submit" type="submit" value="Ok" />
            <input name="reset" type="reset" value="Reset"/>
            <a class="btn btn-lg btn-primary btn-block" href="registration.php">Ajouter un compte</a>
        </div>
</form>
</div>

<script>
function validateForm() {
    var username_or_email = document.forms["login"]["username_or_email"].value;
    var password = document.forms["login"]["password"].value;

    if (username_or_email == "" || password == "") {
        alert("Both fields are required.");
        return false;
    }
    return true;
}
</script>
</body>
</html>











