$(document).ready(function () {
    $('.processed').hide();
    $('.adm-del').click(function (event) {
        let id_del = event.currentTarget.dataset.id_good;
        let id_session = event.currentTarget.dataset.id_session;
        let button = event.currentTarget.className;
        $.ajax({
            url: "../handler/handler-admin.php",
            type: "POST",
            dataType: "json",
            data: {
                id_del: id_del,
                id_session: id_session,
                button: button
            },
            error: function (request) {
                let statusCode = request.status;
                alert(statusCode);
            },
            success: function (data) {
                if (data.answer2 == null) {
                    event.currentTarget.closest('.full-order').remove();
                } else {
                    event.target.closest('.order-content').querySelector('.item-block-total').textContent = data.answer2;
                    event.currentTarget.closest('.adm-item-block').remove();
                }
            }
        })
    });

    $('.adm-process').click(function (event) {
        event.currentTarget.style = 'display: none';
        event.currentTarget.parentElement.querySelector('.processed').style = 'display: flex';
        let hide = event.currentTarget.closest('.full-order').querySelectorAll('.adm-item-block-right');
        for (let i = 0; i < hide.length; i++) {
            hide[i].style = 'display: none';
        }
        event.currentTarget.closest('.full-order').querySelector('.order-content').style = 'background: #17b02a';

        let processed_session = event.currentTarget.dataset.session;
        $.ajax({
            url: "../handler/handler-admin.php",
            type: "POST",
            dataType: "json",
            data: {
                processed_session: processed_session
            },
            error: function (request) {
                let statusCode = request.status;
                alert(statusCode);
            }
        })
    });

    $('.adm-minus').click(function (event) {
        let session_minus = event.currentTarget.dataset.id_session;
        let id_minus = event.currentTarget.dataset.id_good;
        $.ajax({
            url: "../handler/handler-del.php",
            type: "POST",
            dataType: "json",
            data: {
                session_minus: session_minus,
                id_minus: id_minus
            },
            error: function (request) {
                let statusCode = request.status;
                alert(statusCode);
            },
            success: function (data) {
                event.currentTarget.closest('.order-content').querySelector('.item-block-total').textContent = data.answer2;
                if (data.answer1 > 1) {
                    event.target.closest('.adm-item-block').querySelector('.adm-quantity').textContent = data.answer3;
                    event.target.closest('.adm-item-block').querySelector('.adm-stotal').textContent = data.answer4;
                } else {
                    event.currentTarget.closest('.adm-item-block').remove();
                }
            }
        })
    });

    $('.adm-plus').click(function (event) {
        let session_plus = event.currentTarget.dataset.id_session;
        let id_plus = event.currentTarget.dataset.id_good;
        $.ajax({
            url: "../handler/handler-admin-plus.php",
            type: "POST",
            dataType: "json",
            data: {
                session_plus: session_plus,
                id_plus: id_plus
            },
            error: function (request) {
                let statusCode = request.status;
                alert(statusCode);
            },
            success: function (data) {
                event.currentTarget.closest('.order-content').querySelector('.item-block-total').textContent = data.answer3;
                event.target.closest('.adm-item-block').querySelector('.adm-quantity').textContent = data.answer1;
                event.target.closest('.adm-item-block').querySelector('.adm-stotal').textContent = data.answer2;
            }
        })
    });
});