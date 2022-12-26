$(function () {

    //Učitavanje termina iz baze
    $.ajax({
        url: 'DB/getAllTermin.php',
        method: 'GET',
        success: function (data) {
            $('.termini-tabela').html(data);
            $('#table').DataTable();
        }
    }),



        //Unos novog termina u bazu podataka
        $("#save-termin-btn").click(function () {
            $.ajax({
                url: 'DB/addTermin.php',
                method: 'POST',
                data: {
                    datum: $('#datum').val(),
                    lokal: $('#lokal').val(),
                    musterija_id: $('#musterija_id').val(),
                    frizer_id: $('#frizer_id').val(),
                    usluga: $('#usluga').val(),
                    cena: $('#cena').val()
                },
                success: function () {
                    window.location.href = 'index.php'
                }
            })
        });



    //Brisanje termina u bazi podataka
    $(document).on('click', '#del-termin-btn', function () {
        $.ajax({
            url: 'DB/deleteTermin.php',
            method: 'POST',
            data: {
                termin_id: $(this).val(),
            },
            success: function () {
                window.location.href = 'index.php'
            }
        })
    })


});