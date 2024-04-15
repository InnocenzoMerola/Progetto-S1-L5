<?php

include __DIR__ . "/includes/db.php";


$search = $_GET['search'] ?? "";

$page = $_GET['page'] ?? 1;
$limit = $_GET['limit'] ?? 8;
$limit = $limit > 8 ? 2 : $limit;
$offset = ($page - 1) * $limit;

$stmt = $pdo->prepare('SELECT * FROM libri WHERE titolo LIKE :search OR genere LIKE :searchGen LIMIT :limit OFFSET :offset');
$stmt->execute([
    'search' => "%$search%",
    'searchGen' => "%$search%",
    'offset'=> $offset,
    'limit'=> $limit,
]);
$libri = $stmt->fetchAll();

$stmt = $pdo->prepare('SELECT COUNT(*) as num_books FROM libri WHERE titolo LIKE :search');
$stmt->execute([
    'search'=> "%$search%",
]);

$num_books = $stmt->fetch()['num_books'];
$tot_pages = ceil($num_books / $limit);


include __DIR__ . "/includes/initial.php"
?>

<h1 class="text-center">Libri disponibili</h1>
    <?php foreach ($libri as $row) {?>
        <div class="col-3">
            <div class="card">
                <a href="http://localhost/IFOA-BackEnd/Progetto%20S1-L5/detail.php?id=<?= $row['id'] ?>">
                    <img src="<?= $row['image'] ?>" class="card-img-top cover" alt="..." >
                </a>
                <div class="card-body pb-0 border-top border-2">
                    <h5 class="card-title"><?= $row['titolo'] ?></h5>
                    <p class="card-text mb-1 author">Scritto da <span class="fw-medium"><?= $row['autore'] ?></span></p>
                    <div class="d-flex justify-content-between">
                        <p class="card-text mb-0"><?= $row['genere'] ?></p>
                        <p class="card-text mb-0"><?= $row['anno_pubblicazione'] ?></p>
                    </div>
                    <div class="d-flex mt-2 justify-content-end gap-2 border-top border-1 py-2">
                        <a class="btn btn-info text-white text-decoration-none" href="http://localhost/IFOA-BackEnd/Progetto%20S1-L5/detail.php?id=<?= $row['id'] ?>">Dettagli</a>
                        <a class="btn btn-success text-white text-decoration-none" href="http://localhost/IFOA-BackEnd/Progetto%20S1-L5/edit.php?id=<?= $row['id'] ?>">Modifica</a>
                        <a class="btn btn-danger text-white text-decoration-none" href="http://localhost/IFOA-BackEnd/Progetto%20S1-L5/delete.php?id=<?= $row['id'] ?>">Elimina</a>
                    </div>
                </div>
            </div>
        </div><?php     
        }?> 
    
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <li class="page-item <?= $page == $i ? 'active' : ''?>">
                    <a class="page-link" href="/IFOA-BackEnd/Progetto%20S1-L5/index.php?page=<?= $page-1 ?><?=$search ? "&search=$search" : '' ?>">Previous</a>
                </li>
                   <?php
                        for ($i=1; $i <= $tot_pages; $i++) {?> 
                            <li class="page-item"><a class="page-link" href="/IFOA-BackEnd/Progetto%20S1-L5/index.php?page=<?= $i ?><?=$search ? "&search=$search" : '' ?>"><?= $i ?></a></li><?php
                        }
                   ?>

                <li class="page-item <?= $page == $tot_pages ? 'active' : ''?>">
                    <a class="page-link" href="/IFOA-BackEnd/Progetto%20S1-L5/index.php?page=<?= $page+1 ?><?=$search ? "&search=$search" : '' ?>">Next</a>
                </li>
            </ul>
        </nav>

<?php
include __DIR__ . "/includes/end.php";