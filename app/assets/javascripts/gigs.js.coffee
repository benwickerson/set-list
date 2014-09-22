# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  jQuery ->
    $('#gig_tunes').sortable(
      axis: 'y'
      delay: 250
      start: (event, ui)->
      update: ->
        $.post($(this).data('update-url'), $(this).sortable('serialize'))
        )


$(document).ready(ready)
$(document).on('page:load', ready)