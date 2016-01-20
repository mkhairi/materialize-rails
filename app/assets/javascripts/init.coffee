$(document).on 'page:change', ->
  Materialize.updateTextFields()
  Waves.displayEffect()
  $('.dropdown-button').dropdown()
  $('select').material_select();
