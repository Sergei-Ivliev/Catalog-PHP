<?php
?>
<script>
    $(document).ready(function () {
        console.log(document.cookie);

        $('.order').click(function (event) {
            if ($('#total_price')[0].textContent === "0") {
                window.location = "../index.php";
            } else if
            ($('.album').has($('.item-block')) && document.cookie.includes('null')) {
            //$('.album').has($('.item-block')) && <?//= $username === '' ?>// {
                event.preventDefault();
                $('#overlay').fadeIn(400,
                    function () {
                        $('#modal_form')
                            .css('display', 'flex')
                            .animate({opacity: 1, top: '50%'}, 200);
                    });
            } else if (document.cookie.indexOf('user') && !document.cookie.includes('null')) {
                window.location = "order.php";
            } else {
                window.location = "../index.php";
            }
        });
        $('#modal_close, #overlay').click(function () {
            $('#modal_form')
                .animate({opacity: 0, top: '45%'}, 200,
                    function () {
                        $(this).css('display', 'none');
                        $('#overlay').fadeOut(400);
                    }
                );
        });
    });

</script>

