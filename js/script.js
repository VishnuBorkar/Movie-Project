$(document).ready(function() {
    clear();
    addHover();
    $("#filters select[data='filter']").change(loadMovies);
    $("#contentContainer").delegate('#pagination span', 'click', loadMovies);

});

function clear() {
    $("#filters select[name='genre']").val('');
    $("#filters select[name='lang']").val('');
    $("#filters select[name='sortBy']").val('');
    $("#filters select[name='sortType']").val('');
    $("#pagination input[name='pag']").val('');
}

function addHover() {
    $(".movie-row > div").hover(function() {
            $(this).find(".desc").slideDown();
            $(this).find(".info").slideUp();
            //$(this).find(".movie-item").css('-webkit-filter', 'blur(0.7px)');
            $(this).find(".movie-item").css('-webkit-transform', 'scale(1.1,1.1)');
        },
        function() {
            $(this).find(".desc").slideUp();
            $(this).find(".info").slideDown();
            //$(this).find(".movie-item").css('-webkit-filter', 'blur(0px)');
            $(this).find(".movie-item").css('-webkit-transform', 'scale(1,1)');
        })
}

function loadMovies() {
    var genre = $("#filters select[name='genre']").val();
    var lang = $("#filters select[name='lang']").val();
    var sortBy = $("#filters select[name='sortBy']").val();
    var sortType = $("#filters select[name='sortType']").val();
    var pag = $("#pagination input[name='pag']").val();
    var pagClk = $(this).attr('data');
    $("#contentContainer").html('');
    $.ajax({
        url: "index.php",
        type: "POST",
        data: {
            submit: 1,
            genre: genre,
            lang: lang,
            sortBy: sortBy,
            sortType: sortType,
            pag: pag,
            pagClk : pagClk,
        },
        success: function(data) {
            $("#contentContainer").html(data);
            addHover();
        }
    });
}