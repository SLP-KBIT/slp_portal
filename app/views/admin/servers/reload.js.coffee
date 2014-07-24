<% if @server %>
  location.href='/admin/servers'
<% else %>
  locatiton.reload( true )
<% end %>
