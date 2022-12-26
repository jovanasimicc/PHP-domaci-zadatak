<?php

include '../MODELI/Termin.php';

$termin = new Termin();
$termin->deleteTermin($_POST['termin_id']);
