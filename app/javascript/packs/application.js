import "bootstrap";

import { loadDynamicBannerText } from '../components/banner';

if (document.getElementById('banner-typed-text')) {
  loadDynamicBannerText();
}

import { mytimer } from '../components/mytimer';
if (document.getElementById('questiontiming')) {
  mytimer();
}

import { timerbis } from '../components/timer';
if (document.getElementById('questiontiming')) {
  timerbis();
}
