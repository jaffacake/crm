# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $("[data~='datepicker']").datepicker({ "format": "dd-mm-yyyy", "autoclose": true });
  #$("#date_picker").datepicker({ dateFormat: "dd/mm/yy" });
  #$('#ui-datepicker-div').removeClass('ui-helper-hidden-accessible');
  #$('#properties').dataTable({sPaginationType: "full_numbers", bJQueryUI: true, bProcessing: true, bServerSide: true, sAjaxSource: $('#properties').data('source'), sDom: '<"H"Tfr>t<"F"ip>', oTableTools: { aButtons: [ "copy", "csv", "xls", "pdf",{ sExtends: "collection", sButtonText: "Save", aButtons: [ "csv", "xls", "pdf" ]}]}});
  $('#properties-table').dataTable({"bScrollAutoCss": "true" });
  