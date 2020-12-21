<%= form_with model: @plan, url: calendars_path, class: 'form' do |f| %>
    <%= f.label :日付を選択, class: 'lavel' %>
    <%= f.date_field :date, class: 'date-select' %>
    <%= f.label :予定を入力, class: 'lavel' %>
    <%= f.text_field :plan, class: 'text-input' %>
    <%= f.submit '保存' %>
  <% end %>


  <div class='calendar'>
    <% @week_days.each do |day| %>
      <div class='item'>
        <div class='date'>
          <% day[:month] %>/<% day[:date] %>
        </div>
        <div class='content'>
          <% if day[:plans].length != 0 %>
            <% day[:plans].each do |plan| %>
              <li class='plan-list'>・<%= plan %></li>
          <% end %>
        </div>
      </div>
    <% end %>
  </div>