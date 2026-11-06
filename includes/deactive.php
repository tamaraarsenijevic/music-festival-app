<?php
$host = 'localhost';
$dbname = 'muzickifestival';
$username = 'root';
$password = '';


$mysqli = new mysqli($host, $username, $password, $dbname);


if ($mysqli->connect_error) {
    die("Konekcija sa bazom nije moguća: " . $mysqli->connect_error);
}



if (isset($_GET['id'])) {
    echo "ID je prosleđen: " . $_GET['id']; 

    $notifId = $_GET['id'];

    
    if ($mysqli) {
    
        $query = "UPDATE obavestenja SET procitano = 1 WHERE id = ?";
        
    
        if ($stmt = $mysqli->prepare($query)) {
            $stmt->bind_param("i", $notifId);
            
            
            if ($stmt->execute()) {
                echo "Obaveštenje je označeno kao pročitan.";
            } else {
                echo "Došlo je do greške pri označavanju obaveštenja.";
            }

            
            $stmt->close();
        } else {
            echo "Greška u pripremi upita.";
        }
    } else {
        echo "Konekcija sa bazom nije uspostavljena.";
    }
} else {
    echo "ID obaveštenja nije prosleđen.";
}

$mysqli->close();
?>
