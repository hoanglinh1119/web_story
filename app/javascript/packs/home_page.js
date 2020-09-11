import '../stylesheets/home_page.scss'
$(document).ready(function() {
    // var fixed_dropdown_navibar;
    $("#dropdown01").click(function() {
        alert('ok');
        $(".nav-item dropdown").toggleClass("show");
        $("#dropdown1").css({ "aria-expanded": "true" });
        $(".dropdown-menu").toggleClass("show");
    });

    // $("#like").click(function(event) {
    //     event.preventDefault();
    //     let id = $('#id');
    //     $.ajax({
    //             url: '/like',
    //             method: 'POST',
    //             contentType: 'application/json',
    //             data: { id: id.val() },
    //             success: function(respone) {
    //                 alert(respone);
    //             }
    //         })
    //         // let post_id = 14
    //         // $.post('/like', post_id, function() {
    //         // });
    // });

    // $('#like').click(function(event) {
    //     event.preventDefault();
    //     var id = 14
    //     $.ajax('http://localhost:3000/like', id, {
    //         success: function(data) {
    //             console.log(data);
    //         },
    //         error: function() {
    //             console.log('false');
    //         }
    //     });
    // });
    // e.preventDefault();http://localhost:3000/post
    //     var id = 14
    //     $.ajax({
    //         url: '/like',
    //         type: 'POST',
    //         dataType: 'json',
    //         data: { id: id },
    //     }).done(function(data) {
    //         alert('a');
    //     })
    //     return false;
});

// \url: 'http://localhost:3000/like',
// type: 'POST',
// dataType: 'json',
// data: {
//     id: "14"
// }
// }).done(
// console.log('a'