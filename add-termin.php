<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="index.css">
    <title>Document</title>
</head>

<body>
    <div class="body-add-termin-div">

        <h1>NOVI TERMIN</h1>

        <div class="add-termin-div">
            <input type="text" class="form-control" placeholder="Datum..." id="datum">
            <input type="text" class="form-control" placeholder="Lokal..." id="lokal">
            <select id="musterija" class="form-select">
                <option>Izaberi mušteriju</option>

                <?php
                include 'DB/dbConnection.php';

                $SQL = "SELECT * FROM musterija";
                $musterije = $connection->query($SQL);

                while ($mus = mysqli_fetch_array($musterije)) {
                ?>
                    <option value="<?php echo $mus['id']; ?>">
                        <?php echo $mus['ime'] . " " . $mus['prezime']; ?>
                    </option>
                <?php
                }
                ?>
            </select>

            <select id="frizer" class="form-select">
                <option value="Frizer">Izaberi frizera</option>

                <?php
                $SQL = "SELECT * FROM frizer";
                $frizeri = $connection->query($SQL);

                while ($friz = mysqli_fetch_array($frizeri)) {
                ?>
                    <option value="<?php echo $friz['id']; ?>">
                        <?php echo $friz['ime'] . " " . $friz['prezime']; ?>
                    </option>
                <?php
                }
                ?>
            </select>

            <input type="text" class="form-control" placeholder="Usluga..." id="datum">
            <input type="number" class="form-control" placeholder="Cena..." id="datum">
        </div>


        <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
        <script type="text/javascript" src="javascript.js"></script>
    </div>
</body>

</html>