import Typed from 'typed.js';

const loadDynamicSearchText = () => {
  let filter = document.getElementById('name_filter')
  if(!filter) {
    return
  }

  new Typed('#name_filter', {
    strings: ["Search for any drink ....", "Martine", "Mojito", "Or any drink"],
    typeSpeed: 50,
    loop: true,
    attr:'placeholder'
  });
};

export { loadDynamicSearchText };
