
const initUpdateNavbarOnScroll = () =>{
  const hero = document.querySelector('section > *:first-child.hero');
  const navbar = document.querySelector('.navbar-wagon')

  if (hero && navbar) {
    window.addEventListener('scroll', () =>{
       if (window.scrollY >= (window.innerHeight - navbar.offsetHeight) ) {
        navbar.classList.add('navbar-wagon-color');
      } else {
        navbar.classList.remove('navbar-wagon-color');
      }
    });
  } else {
    navbar.classList.add('navbar-wagon-color');
  }

};

export { initUpdateNavbarOnScroll };
