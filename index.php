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
                    <div class="d-flex mt-2 justify-content-end gap-2 border-top border-1 py-2 ">
                        <a class="btn btn-info text-white text-decoration-none" href="http://localhost/IFOA-BackEnd/Progetto%20S1-L5/detail.php?id=<?= $row['id'] ?>">Dettagli</a>
                        <a class="btn btn-success text-white text-decoration-none" href="http://localhost/IFOA-BackEnd/Progetto%20S1-L5/edit.php?id=<?= $row['id'] ?>">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
                                <path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325"/>
                            </svg></a>
                        <a class="btn btn-danger text-white text-decoration-none" href="http://localhost/IFOA-BackEnd/Progetto%20S1-L5/delete.php?id=<?= $row['id'] ?>">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
                                <path d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5M11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47M8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5"/>
                            </svg>
                        </a>
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