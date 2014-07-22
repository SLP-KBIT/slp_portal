<% if @web_application %>
  location.reload( true )
<% else %>
  alert( '登録できませんでした。' )
<% end %>
