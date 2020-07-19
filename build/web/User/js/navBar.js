$(function () {
    $(document).scroll(function () {
        var $nav = $("#top-bar");
        $nav.toggleClass("scrolled", $(this).scrollTop() > $nav.height());
    });
});