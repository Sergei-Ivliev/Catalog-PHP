$(document).ready(function () {
    $('#send_reg').click(function () {
        if ($('#new__pass1') !== $('#new_pass2')) {
            window.location = "/";
            alert('password input INCORRECT');
        }
    })
});
