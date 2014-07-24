<% if @user %>
  location.href='/admin/users'
<% else %>
  locatiton.reload( true )
<% end %>
