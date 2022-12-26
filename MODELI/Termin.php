<?php

class Termin
{
    public $id;
    public $datum;
    public $lokal;
    public $musterija_id;
    public $frizer_id;
    public $usluga;
    public $cena;


    public function deleteTermin($termin_id)
    {
        include '../DB/dbConnection.php';

        $SQL = "DELETE FROM termin WHERE id=" . $termin_id;
        return $connection->query($SQL);
    }
}
