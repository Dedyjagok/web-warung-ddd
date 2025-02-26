<?php
session_start();
include 'service/database.php';

if (isset($_POST["username"]) && isset($_POST["password"])) {
    $username = $_POST["username"];
    $password = $_POST["password"];

    $query = "SELECT * FROM admin WHERE username = ?";
    $stmt = $db->prepare($query);
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();
    $user = $result->fetch_assoc();
    $stmt->close();

    if ($user && $password === $user['password']) { // Assuming passwords are stored in plain text
        $_SESSION['username'] = $user['username'];
        header("Location: warung.php");
        exit();
    } else {
        header("Location: index.php?error=Invalid username or password");
        exit();
    }
} else {
    header("Location: index.php?error=Please enter username and password");
    exit();
}