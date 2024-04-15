<?php

include __DIR__ . "/includes/db.php";

$id = $_GET['id'] ?? '';
$stmt = $pdo->prepare("DELETE FROM libri WHERE id = ?");
$stmt->execute([$id]);

header("Location: /IFOA-BackEnd/Progetto%20S1-L5/index.php");