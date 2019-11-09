$(document).ready(function () {
    $(".buy").on('click', function (event) {
        let id_good = event.currentTarget.dataset.id_good;
        $.ajax({
            url: "handler/handler.php",
            type: "POST",
            dataType: "json",
            data: {
                id_good: id_good,
            },
            error: function (request) {
                let statusCode = request.status;
                alert(statusCode);
            },
            success: function (answer) {
                $(".sum").text(answer);
            }
        })
    });
});
