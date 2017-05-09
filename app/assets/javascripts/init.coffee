$(document).on 'ready turbolinks:load', ->
  $(".button-collapse").sideNav();
  $('.dropdown-button').dropdown()
  $('.modal').modal();
  $('select').material_select();
  $('ul.tabs').tabs();
  Waves.displayEffect()


