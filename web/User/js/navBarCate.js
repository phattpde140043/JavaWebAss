$(function () {
    $(document).scroll(function () {
        var $navSub = $("#sub-menu");
        var $navTop = $("#top-bar");
        $navSub.toggleClass("scrolled", $(this).scrollTop() > 5);
        $navTop.toggleClass("scrolled", $(this).scrollTop() > 5);
        $navSub.toggleClass("fixed-top", $(this).scrollTop() > ($navSub.height() + 15));
        var $extra = $("#extra");
        $extra.toggleClass("extra-padding", $(this).scrollTop() > ($navSub.height() + 15));
    });
});
