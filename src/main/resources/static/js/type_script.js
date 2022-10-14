
$(function() {
    // Can also be included with a regular script tag
//    import Typed from 'typed.js';

    var options = {
      strings: ['PYTHON PROGRAMMER',
      'WEBSITE DEVELOPER',
      "MUSICIAN",
      "RESEARCHER",
      "FULL STACK COMPUTER SCIENTIST"],
      typeSpeed: 40,
      backSpeed: 40,
      backDelay: 700,

    };

    var typed = new Typed('.element', options);
})
