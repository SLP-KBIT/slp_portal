$('.modal-form').html( '<%= escape_javascript( render partial: 'admin/servers/delete' ) %>' )
$('#modal-form').modal()
