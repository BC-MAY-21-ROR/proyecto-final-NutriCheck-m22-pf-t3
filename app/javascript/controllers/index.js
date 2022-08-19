import { application } from "controllers/application"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)


var allBtns = document.querySelector('.toggle-sidebar-btn');
allBtns.addEventListener('click', function () {
  document.querySelector('body').classList.toggle('toggle-sidebar');
  console.log('hola');
})

