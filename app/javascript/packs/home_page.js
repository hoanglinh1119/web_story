import '../stylesheets/home_page.scss'
$(document).ready(function() {
    $("#dropdown01").click(function() {
        $(".nav-item dropdown").toggleClass("show");
        $("#dropdown1").css({ "aria-expanded": "true" });
        $(".dropdown-menu").toggleClass("show");
    });

});