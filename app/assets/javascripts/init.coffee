$(document).on 'turbolinks:before-visit turbolinks:before-cache', ->
  elem = document.querySelector('#slide-out');
  instance = M.Sidenav.getInstance(elem) if elem
  if instance 
    instance.close() if instance.isOpen #close on click
    instance.destroy()

$(document).on 'turbolinks:load', ->
  elem = document.querySelector('#slide-out');
  instance = new M.Sidenav(elem, {}) if elem

$(document).on 'turbolinks:load', ->
  Waves.displayEffect()
  M.updateTextFields()

  $('.dropdown-trigger').dropdown();
  $('.slider').slider();
  $('.parallax').parallax();
  $('.materialboxed').materialbox();
  $('.modal').modal();
  $('.scrollspy').scrollSpy();
  $('.datepicker').datepicker();
  $('.tabs').tabs();
  $('.timepicker').timepicker();
  $('.tooltipped').tooltip();
  $('select').not('.disabled').formSelect();

  $('input.autocomplete').autocomplete data:
    'Apple': null
    'Microsoft': null
    'Google': 'http://placehold.it/250x250'
  $('input[data-length], textarea[data-length]').characterCounter();


  # Swipeable Tabs Demo Init
  if $('#tabs-swipe-demo').length
    $('#tabs-swipe-demo').tabs 'swipeable': true
  # Chips
  $('.chips').chips()
  $('.chips-initial').chips
    readOnly: true
    data: [
      { tag: 'Apple' }
      { tag: 'Microsoft' }
      { tag: 'Google' }
    ]
  $('.chips-placeholder').chips
    placeholder: 'Enter a tag'
    secondaryPlaceholder: '+Tag'
  $('.chips-autocomplete').chips autocompleteOptions: data:
    'Apple': null
    'Microsoft': null
    'Google': null
  # Fab
  $('.fixed-action-btn').floatingActionButton()
  $('.fixed-action-btn.horizontal').floatingActionButton direction: 'left'
  $('.fixed-action-btn.click-to-toggle').floatingActionButton
    direction: 'left'
    hoverEnabled: false
  $('.fixed-action-btn.toolbar').floatingActionButton toolbarEnabled: true

  console.log "load init on ready or turbolinks:load"

