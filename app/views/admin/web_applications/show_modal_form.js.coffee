$('.modal-form').html( '<%= escape_javascript( render partial: 'admin/web_applications/form' ) %>' )
$('#modal-form').modal()
