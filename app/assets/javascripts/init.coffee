$(document).on 'ready turbolinks:load', ->
  Waves.displayEffect()
  $('.dropdown-button').dropdown()
  $('select').material_select();
  $('.modal').modal();
  $('ul.tabs').tabs();
  $('.tapTarget').tapTarget('open');
  $('.tapTarget').tapTarget('close');
  $(".button-collapse").sideNav();


