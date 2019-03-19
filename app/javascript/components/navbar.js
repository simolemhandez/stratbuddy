const navbarDynamic = () => {
  window.addEventListener('scroll', (event) => {
    const homenav = document.querySelector(".navbar-lewagon");
    if(window.scrollY >= 520) {
      homenav.classList.remove("navbar-lewagon-home");
    } else {
      homenav.classList.add("navbar-lewagon-home");
    }
  })
}

export { navbarDynamic }
