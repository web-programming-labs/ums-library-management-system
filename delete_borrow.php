<?php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "library";

// Menghubungkan ke database
$conn = new mysqli($servername, $username, $password, $dbname);

// Memeriksa koneksi
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Mengambil nilai borrow_id dari URL
if (isset($_GET['borrow_id'])) {
    $borrow_id = $_GET['borrow_id'];

    // Menyiapkan statement SQL untuk menghindari SQL Injection
    $stmt = $conn->prepare("DELETE FROM borrow WHERE borrow_id = ?");
    $stmt->bind_param("s", $borrow_id);

    // Menjalankan query
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

    // Menutup statement
    $stmt->close();
} else {
    echo "
        <script>
            alert('No borrow ID provided');
            document.location.href='books.php';
        </script>
    ";
}

// Menutup koneksi
$conn->close();
?>