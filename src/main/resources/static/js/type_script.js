
$(function() {
    // Can also be included with a regular script tag
//    import Typed from 'typed.js';

    var options = {
      strings: ['PYTHON PROGRAMMER',
      'WEBSITE DEVELOPER',
      "MUSICIAN",
      "IMAGE PROCESSING PROGRAMMER",
      "COMPUTER VISION RESEARCHER",
      "FULL STACK COMPUTER SCIENTIST"],
      typeSpeed: 40,
      backSpeed: 40,
//      shuffle: true,
      backDelay: 700,
//      smartBackspace: true // Default value

    };

    var typed = new Typed('.element', options);
})
