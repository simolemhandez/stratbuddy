import "bootstrap";

import { loadDynamicBannerText } from '../components/banner';

if (document.getElementById('banner-typed-text')) {
  loadDynamicBannerText();
}

// import { mytimer } from '../components/mytimer';
// if (document.getElementById('questiontiming')) {
//   mytimer();
// }

import { timerbis } from '../components/timer';
if (document.getElementById('questiontiming')) {
  timerbis();
}

import { navbarDynamic } from '../components/navbar';
if (document.getElementById('home-banner-navbar')) {
  navbarDynamic();
}


