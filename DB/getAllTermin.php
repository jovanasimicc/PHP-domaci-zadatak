<table class="table table-hover table-striped">

    <thead>
        <tr>
            <th>Datum</th>
            <th>Lokal</th>
            <th>Mušterija</th>
            <th>Frizer</th>
            <th>Usluga</th>
            <th>Cena</th>
        <tr>
    </thead>


    <tbody>
        <?php
        include 'dbConnection.php';

        $SQL = "SELECT termin.id as tid, termin.datum as tdat, termin.lokal as tlok, termin.usluga as tusl, termin.cena as tcena,
        musterija.ime as mime, musterija.prezime as mprez, musterija.broj_telefona as mbrtel,
        frizer.ime as fime, frizer.prezime as fprez FROM termin 
        INNER JOIN musterija ON termin.musterija_id = musterija.id 
        INNER JOIN frizer ON termin.frizer_id = frizer.id ORDER BY tid";

        $termini = $connection->query($SQL);


        while ($ter = mysqli_fetch_array($termini)) {
        ?>
            <tr>
                <td>
                    <?php echo $ter['tdat'];  ?>
                </td>
                <td>
                    <?php echo $ter['tlok'];  ?>
                </td>
                <td>
                    <?php echo $ter['mime'] . " " . $ter['mprez'] . " " . $ter['mbrtel']; ?>
                </td>
                <td>
                    <?php echo $ter['fime'] . " " . $ter['fprez'];  ?>
                </td>
                <td>
                    <?php echo $ter['tusl'];  ?>
                </td>
                <td>
                    <?php echo $ter['tcena'];  ?>
                </td>
            </tr>
        <?php
        }
        ?>

    </tbody>
</table>