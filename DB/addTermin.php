<?php

include '../MODELI/Termin.php';
include 'dbConnection.php';


$novi_termin = new Termin();
$novi_termin->datum = $_POST['datum'];
$novi_termin->lokal = $_POST['lokal'];
$novi_termin->musterija_id = $_POST['musterija_id'];
$novi_termin->frizer_id = $_POST['frizer_id'];
$novi_termin->usluga = $_POST['usluga'];
$novi_termin->cena = $_POST['cena'];


$SQL = "INSERT INTO termin VALUES (null, '$novi_termin->datum', '$novi_termin->lokal', '$novi_termin->musterija_id', '$novi_termin->frizer_id', '$novi_termin->usluga', '$novi_termin->cena')";
$connection->query($SQL);
