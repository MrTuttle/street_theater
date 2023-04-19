<h1>Locations index</h1>

<% @locations.each do | location | %>
  <p><%= location.name %></p>
  <p><%= location.address %></p>

<% end %>
