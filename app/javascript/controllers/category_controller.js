import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="category"
export default class extends Controller {
  static targets = ["item"]

// identifier categorie clicke dans une variable
// recuperer toutes targets et identifier leur appartenance


showitems(event) {
    const clickedCategory = event.currentTarget.dataset.category;

  document.querySelectorAll('.btn-filter').forEach((button) => {
    button.style.backgroundColor = '';
  });
  event.currentTarget.style.backgroundColor = '#D3D3D3';

  this.itemTargets.forEach((element) => {
    element.classList.toggle('d-none', element.dataset.category !== clickedCategory);
  });
}
showall(event) {
  this.itemTargets.forEach((element) => {
    element.classList.remove('d-none');
  });
}

}












  // showitems(event) {
  //   const category = event.currentTarget.textContent.trim().toLowerCase();
  //   this.itemTargets.forEach((element) => {
  //     if (element.dataset.category.toLowerCase() === category) {
  //       element.classList.remove('d-none');
  //     } else {
  //       element.classList.add('d-none');
  //     }
  //   });
  // }
  // }
