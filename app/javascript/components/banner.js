import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["the best consulting firms", "McKinsey & Co", "BCG", "Bain Consulting", "Oliver Wyman", "Roland Berger", "Accenture"],
    typeSpeed: 30,
    loop: true
  });
}

export { loadDynamicBannerText };
