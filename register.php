<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "library";

// connection to database
$conn = new mysqli($servername, $username, $password, $dbname);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $member_id = uniqid();
    $member_name = $_POST['member_name'];
    $member_address = $_POST['member_address'];
    $member_email = $_POST['member_email'];
    $member_dob = $_POST['member_dob'];

    $sql = "INSERT INTO member (member_id, member_name, member_address, member_email, member_DOB) VALUES ('$member_id', '$member_name', '$member_address', '$member_email', '$member_dob')";

    if ($conn->query($sql) === TRUE) {
        echo "New member registered successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
</head>
<body>
    <h1>Register</h1>
    <form method="POST">
        <label>Name:</label><br>
        <input type="text" name="member_name" required><br>
        <label>Address:</label><br>
        <input type="text" name="member_address" required><br>
        <label>Email:</label><br>
        <input type="email" name="member_email" required><br>
        <label>Date of Birth:</label><br>
        <input type="date" name="member_dob" required><br>
        <input type="submit" value="Register">
    </form>
</body>
</html>