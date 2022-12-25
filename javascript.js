$(function () {

    //Učitavanje termina iz baze
    $.ajax({
        url: 'DB/getAllTermin.php',
        method: 'GET',
        success: function (data) {
            $('.termini-tabela').html(data);
        }
    })

});