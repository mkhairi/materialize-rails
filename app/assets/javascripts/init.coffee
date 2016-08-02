$(document).on 'page:change turbolinks:load', ->
  Materialize.updateTextFields()
  Waves.displayEffect()
  $('.dropdown-button').dropdown()
  $('select').material_select();


