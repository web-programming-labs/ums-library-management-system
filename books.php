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

// Retrieve book data
$sql = "SELECT * FROM book";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Book List</title>
</head>
<body>
    <h1>Book List</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Image</th>
            <th>Title</th>
            <th>Author</th>
            <th>Year</th>
            <th>Genre</th>
            <th>Quantity</th>
            <th>Action</th>
        </tr>
        <?php while ($row = $result->fetch_assoc()): ?>
        <tr>
            <td><?php echo $row['book_id']; ?></td>
            <td><?php echo $row['image']; ?></td>
            <td><?php echo $row['book_title']; ?></td>
            <td><?php echo $row['book_author']; ?></td>
            <td><?php echo $row['book_publication_year']; ?></td>
            <td><?php echo $row['genre']; ?></td>
            <td><?php echo $row['book_quantity']; ?></td>
            <td>
                <a href="delete.php?book_code=<?php echo $row['book_id']; ?>">Delete</a>
            </td>
        </tr>
        <?php endwhile; ?>
    </table>
</body>
</html>

<?php
$conn->close();
?>