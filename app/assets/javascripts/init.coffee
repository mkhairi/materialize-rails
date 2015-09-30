$(document).on 'page:change', ->
  Materialize.updateTextFields()
  Waves.displayEffect()
  $('.dropdown-button').dropdown()
