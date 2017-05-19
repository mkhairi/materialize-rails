#= require datatables/jquery.dataTables
#= require datatables/extensions/AutoFill/dataTables.autoFill
#= require datatables/extensions/Buttons/dataTables.buttons
#= require datatables/extensions/Buttons/buttons.html5
#= require datatables/extensions/Buttons/buttons.print
#= require datatables/extensions/Buttons/buttons.colVis
#= require datatables/extensions/Buttons/buttons.flash
#= require datatables/extensions/ColReorder/dataTables.colReorder
#= require datatables/extensions/FixedColumns/dataTables.fixedColumns
#= require datatables/extensions/FixedHeader/dataTables.fixedHeader
#= require datatables/extensions/KeyTable/dataTables.keyTable
#= require datatables/extensions/Responsive/dataTables.responsive
#= require datatables/extensions/RowReorder/dataTables.rowReorder
#= require datatables/extensions/Scroller/dataTables.scroller
#= require datatables/extensions/Select/dataTables.select


$.extend $.fn.dataTable.defaults,
  dom: '<\'hiddensearch\'f\'>' + 'tr' + '<\'table-footer\'lip\'>'
  responsive: true
  pagingType: 'full'
  renderer: 'material'
  autoWidth: false
  language:
    stripClasses: ''
    search: ''
    searchPlaceholder: 'Enter Keywords Here'
    info: '_START_ -_END_ of _TOTAL_'
    lengthMenu: '<span>Rows per page:</span><select class="browser-default">' + '<option value="10">10</option>' + '<option value="20">20</option>' + '<option value="30">30</option>' + '<option value="40">40</option>' + '<option value="50">50</option>' + '<option value="-1">All</option>' + '</select></div>'
    paginate:
      previous: "<i class='material-icons'>navigate_before</i>"
      next:     "<i class='material-icons'>navigate_next</i>"
      first:    "<i class='material-icons'>first_page</i>"
      last:     "<i class='material-icons'>last_page</i>"

$(document).on 'turbolinks:load', ->
  $("table#dttb").DataTable() unless $.fn.DataTable.isDataTable("table#dttb")
  $('.search-toggle').click ->
    if $('.hiddensearch').css('display') == 'none'
      $('.hiddensearch').slideDown()
    else
      $('.hiddensearch').slideUp()
    return