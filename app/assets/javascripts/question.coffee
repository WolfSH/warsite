# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on("ready page:load", () ->
  $("#new_question").on("ajax:success", (e, data, status, xhr) ->
    $("#new_question").html "<p>SUCCESS</p>"
  ).on "ajax:error", (e, xhr, status, error) ->
    $("#new_question").html "<p>ERROR</p>")