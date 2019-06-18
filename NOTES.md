<h2>Hero Name: <%= @pirate.weight %> pounds</h4><br>
<h4>Height: <%= @pirate.height %> inches</h4>

<h1>Ships</h1>
<% @ships.each do |ship| %>
<div class="ship">
  <p>Name: <%= ship.name %></p><br>
  <p>Type: <%= ship.type %></p><br>
  <p>Booty: <%= ship.booty %></p>
</div><br>
<% end %> -->

hero like ship
team like pirate
