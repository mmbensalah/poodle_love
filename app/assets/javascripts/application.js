// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require activestorage
//= require_self
//= require_tree .

document.addEventListener("turbolinks:load", function() { alert("ok!") });
$(document).ready(function(){
  $(".btn-patch").on('click', function() {
    var ranking = $( ".dropdown option:selected" ).val();
    var id      = this.id;
    $.ajax({
      type: 'PATCH',
      url: "/api/v1/poodles",
      data: { "id": id, "ranking": ranking },
      success: function(result) {
        alert('Poodle has been ranked!');
      },
      error: function(response) {
        alert(response.responseJSON.error);
      }
    });
  })
  $(".sort").on('click', function() {
    $.ajax({
      type: 'GET',
      url: "/api/v1/sort",
      success: function(result) {
        $( ".images" ).empty();
        result.forEach(function(poodle) {
          $( ".images" ).append(
          `<div class="image"><img src=${poodle.url} alt="dog">
            <select class="dropdown">
              <option value="0">Select Ranking</option>
              <option value="1">Best</option>
              <option value="2">Great</option>
              <option value="3">Good</option>
              <option value="4">Cute</option>
              <option value="5">Shoo</option>
            </select>
            <button class="btn-patch" id="<%= image.id %>">Rank!</button>
          </div>`)
        })
        alert('Sorted');
      },
      error: function(response) {
        alert(response.responseJSON.error);
      }
    });
  })
});
