<?php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "library";

// Connect to the database
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get the borrow_id value from the URL
if (isset($_GET['borrow_id'])) {
    $borrow_id = $_GET['borrow_id'];

    // Prepare the SQL statement to avoid SQL Injection
    $stmt = $conn->prepare("DELETE FROM borrow WHERE borrow_id = ?");
    $stmt->bind_param("s", $borrow_id);

    // Execute the query
    if ($stmt->execute()) {
        echo "
            <script>
                alert('Data has been deleted');
                document.location.href='books.php';
            </script>
        ";
    } else {
        echo "
            <script>
                alert('Failed to delete data');
                document.location.href='books.php';
            </script>
        ";
    }

    // Close the statement
    $stmt->close();
} else {
    echo "
        <script>
            alert('No borrow ID provided');
            document.location.href='books.php';
        </script>
    ";
}

// Close the connection
$conn->close();
?>