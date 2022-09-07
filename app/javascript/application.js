// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery3
//= require popper
//= require bootstrap
//= require slick
import "@hotwired/turbo-rails"  /* eslint-disable-line */
import "controllers" /* eslint-disable-line */

$(document).ready(function () {
  $(".doctor-slider").slick({
    centerMode: true,
    centerPadding: "60px",
    slidesToShow: 3,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          arrows: false,
          centerMode: true,
          centerPadding: "40px",
          slidesToShow: 2,
        },
      },
      {
        breakpoint: 601,
        settings: {
          arrows: false,
          centerMode: true,
          centerPadding: "40px",
          slidesToShow: 1,
        },
      },
    ],
  });

  $(".filter-icon").click(function () {
    $("#sidebar-toggle").removeClass("col-3");
    $("#search-main").removeClass("col-9");
    $("#search-main").addClass("col-11");
    document.getElementById("search-sidebar-form").style.visibility = "hidden";
    document.getElementById("search-filter").style.background = "transparent";
    $("#sidebar-toggle").addClass("col-1");
    $("#filter-wrap").addClass("filter-wrap-toggle");
    $("#filter-text").removeClass("filter-text");
    $("#filter-text").addClass("filter-text-toggle");
    $(".filter-icon").hide();
    $("#filter-icon-container").addClass("filter-icon-container");
    $(".filter-icon-expand").show();
  });

  $(".filter-icon-expand").click(function () {
    $("#sidebar-toggle").removeClass("col-1");
    $("#sidebar-toggle").addClass("col-3");
    document.getElementById("search-sidebar-form").style.visibility = "visible";
    document.getElementById("search-filter").style.background = "#fcffef";
    $("#filter-wrap").removeClass("filter-wrap-toggle");
    $("#filter-wrap").addClass("filter-wrap");
    $("#filter-text").removeClass("filter-text-toggle");
    $("#filter-text").addClass("filter-text");
    $("#search-main").removeClass("col-11");
    $("#search-main").addClass("col-9");
    $(".filter-icon-expand").hide();
    $(".filter-icon").show();
  });
});
