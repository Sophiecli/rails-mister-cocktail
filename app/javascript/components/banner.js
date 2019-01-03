import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Cheers!", "Find Your Poison", "To raise your spirits", "Shaken, not stirred"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
