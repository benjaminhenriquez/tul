<!DOCTYPE html>
<html>
  <head>
    <title>Tul</title>
    <link rel="stylesheet" href="/css/bootstrap.css" />
    <link rel="stylesheet" href="/css/main.css" />
    <%= csrf_meta_tags %>
    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
  </head>

  <body>

    <nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <a class="navbar-brand" href="#">T&uuml;l</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

      <form class="navbar-form navbar-left">
        <div class="form-group">
        </div>
      </form>
        <ul class="nav navbar-nav navbar-right">
          <% if session[:user_id] == nil %>
            <%= form_tag sessions_path do %>
              <%= label_tag :email %>
              <%= text_field_tag 'user[email]' %>
              <%= label_tag :password %>
              <%= password_field_tag 'user[password]' %>
              <%= submit_tag "Log In" %>
            <% end %>
          <% else %>
            <span class="greeting">Hello, <%= User.find(current_user).name %></span><%= button_to 'Log Out', session_path(current_user), :method => :delete  %>
            <%= button_to 'Return to Your Page', user_path(session[:user_id]), :method => :get  %>
          <% end %>
        </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav> 
