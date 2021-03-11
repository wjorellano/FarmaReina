//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/

// dataTable
document.addEventListener("turbolinks:load", () => {
  $(document).ready(function() {
    $("#product").DataTable({
      language: {
        lengthMenu: "Mostrar _MENU_ registros por página",
        zeroRecords: "No se encontraron resultados",
        info: "Mostrando página _PAGE_ de _PAGES_",
        infoEmpty: "No hay registros disponibles",
        infoFiltered: "(filtrado de _MAX_ registros totales)",
        search: "Buscar: ",
        paginate: {
          previous: "Anterior",
          next: "Siguiente"
        }
      }
    });
  });

  $(document).ready(function() {
    $("#product").DataTable();
  });
});

// fin dataTable
