import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Raise your spirits", "Learn to cocktail!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
