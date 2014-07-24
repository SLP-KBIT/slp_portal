$('.modal-form').html( '<%= escape_javascript( render partial: 'admin/web_applications/delete' ) %>' )
$('#modal-form').modal()
