<% if @web_application %>
  location.reload( true )
<% else %>
  alert( '更新できませんでした。' )
<% end %>
