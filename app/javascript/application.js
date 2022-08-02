// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery3
//= require popper
//= require bootstrap
//= require slick
import "@hotwired/turbo-rails"
import "controllers"

$(document).ready(function(){
    $('.doctor-slider').slick({
      centerMode: true,
      centerPadding: '60px',
      slidesToShow: 3,
      responsive: [
      {
        breakpoint: 1024,
        settings: {
          arrows: false,
          centerMode: true,
          centerPadding: '40px',
          slidesToShow: 2
        }
      },
      {
        breakpoint: 601,
        settings: {
          arrows: false,
          centerMode: true,
          centerPadding: '40px',
          slidesToShow: 1
          }
        }
      ]
    });;

    $('.filter-icon').click(function(){
      $('#sidebar-toggle').removeClass("col-3")
      document.getElementById('search-sidebar').style.visibility = 'hidden'
      document.getElementById('search-filter').style.background = 'transparent'
      $('#sidebar-toggle').addClass("col-1")
      $('#filter-wrap').addClass('filter-wrap-toggle')
      $('#filter-text').removeClass("filter-text")
      $('#filter-text').addClass("filter-text-toggle")
    });
  });
