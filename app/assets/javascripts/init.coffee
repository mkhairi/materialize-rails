$(document).on 'ready turbolinks:load', ->
  $(".button-collapse").sideNav();
  $('.dropdown-button').dropdown()
  $('.modal').modal();
  $('select').material_select();
  Waves.displayEffect()
  console.log "load init on ready or turbolinks:load"


  $('textarea').trigger('autoresize')
  $('span.help-text').each ->
    $value = $(this)[0].innerHTML
    $(this).addClass 'hide'
    $(this).parents('div.input-field').children('label').attr(
      'data-hint', $value
    )
