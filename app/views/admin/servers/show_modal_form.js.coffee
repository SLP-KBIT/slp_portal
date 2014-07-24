$('.modal-form').html( '<%= escape_javascript( render partial: 'admin/servers/form' ) %>' )
$('#modal-form').modal()
