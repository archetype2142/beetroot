// import "@fortawesome/fontawesome-free/js/all";
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
import VanillaTilt from 'vanilla-tilt';
import SmoothScroll from 'smooth-scroll';

VanillaTilt.init(document.querySelector("#main_logo"), {
  max: 25,
  speed: 400
});
  

var scroll = new SmoothScroll('a[href*="#"]', {
  speed: 600,
  speedAsDuration: true,
  offset: 80
});


window.onscroll = function(){
  var top = window.pageYOffset || document.documentElement.scrollTop;
  var nav = document.getElementById('nav')
  var center_items = document.getElementById('pull_scroll');

  if (window.innerWidth > 800) {
    if (top > 80) {
      center_items.classList.remove("navbar-start");
      center_items.classList.add("navbar-start-right");
    } else {
      center_items.classList.remove("navbar-start-right");
      center_items.classList.add("navbar-start");
    }
  }
};

document.addEventListener('DOMContentLoaded', () => {
  const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);
  if ($navbarBurgers.length > 0) {
    $navbarBurgers.forEach( el => {
      el.addEventListener('click', () => {
        const target = el.dataset.target;
        const $target = document.getElementById(target);
        el.classList.toggle('is-active');
        $target.classList.toggle('is-active');

      });
    });
  }
});

