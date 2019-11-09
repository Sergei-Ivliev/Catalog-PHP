$(document).ready(function () {
    $(".item-del").on('click', function (event) {
        let id_del = event.currentTarget.dataset.id_del;
        $.ajax({
            url: "../handler/handler-del.php",
            type: "POST",
            dataType: "json",
            data: {
                id_del: id_del,
            },
            error: function (request) {
                let statusCode = request.status;
                alert(statusCode);
            },
            success: function (data) {
                if (data.answer1 > 1) {
                    event.currentTarget.parentNode.querySelector('.item-quant').textContent = data.answer3;
                    event.currentTarget.parentNode.querySelector('.item-stotal').textContent = data.answer4;
                    $('#total_price').text(data.answer2);
                } else {
                    event.target.closest('.item-block').remove();
                }
                if ($('.item-block').length === 0) {
                    $('.cartPrice').text('Your Cart is EMPTY');
                    $('.confirm').remove();
                    $('.order').remove();
                }
            }
        })
    });
});
