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
 
  #reset modal on turbolinks load
  M.Modal._count = 0;
  $('.modal').modal();
  $('.carousel').carousel();
  $('.collapsible').not('.expandable').collapsible();

  $('.collapsible.expandable').collapsible({accordion: false});

  $('.slider').slider();
  $('.parallax').parallax();
  $('.materialboxed').materialbox();
  $('.scrollspy').scrollSpy();
  $('.datepicker').datepicker();
  $('.timepicker').timepicker();
  $('.tooltipped').tooltip();
  $('.dropdown-trigger').dropdown();

  #form
  M.updateTextFields()
  $('select').not('.disabled').formSelect();

  $('input.autocomplete').autocomplete data:
    'Apple': null
    'Microsoft': null
    'Google': 'http://placehold.it/250x250'
  $('input[data-length], textarea[data-length]').characterCounter();


  $('.tabs').tabs();
  # Swipeable Tabs Demo Init
  if $('#tabs-swipe-demo').length
    $('#tabs-swipe-demo').tabs 'swipeable': true
  
  # Chips

  # Handle removal of static chips.
  $(document.body).on 'click', '.chip .close', ->
    $chips = $(this).closest('.chips')
    if $chips.length and $chips[0].M_Chips
      return
    $(this).closest('.chip').remove()

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

