import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Cheers!", "Pick Your Poison", "Raise your spirits", "Shaken, not stirred"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };

