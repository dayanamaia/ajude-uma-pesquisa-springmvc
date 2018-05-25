'use strict';

function main() {
    var toggleMenu = function toggleMenu() {
        $('.c-nav, .acion-menu-mobile').toggleClass('open-menu');
    };

    var scrollTo = function scrollTo(evt, el) {
        evt.preventDefault();
        var elPosition = $(el).offset().top;

        $('html, body').stop().animate({
            scrollTop: elPosition
        }, 800);
    };

    $('.icon').on('click', function () {
        toggleMenu();
    });

    $('.c-banner__link-scroll').on('click', function (evt) {
        scrollTo(evt, '.research');
        document.getElementById('search').focus();
    });
}

$('document').ready(main);