<% if @web_application %>
  location.href='/admin/web_applications'
<% else %>
  locatiton.reload( true )
<% end %>
