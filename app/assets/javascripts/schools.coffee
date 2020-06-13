# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# $ ->
#   'use strict'
#   $('#autocomplete-dynamic').autocomplete
#     serviceUrl: '/schools/search' + $('#autocomplete-dynamic').val()
#     lookupFilter: (suggestion, originalQuery, queryLowerCase) ->
#       re = new RegExp('\\b' + $.Autocomplete.utils.escapeRegExChars(queryLowerCase), 'gi')
#       re.test suggestion.value
#     onSelect: (suggestion) ->
#       $('#selction-ajax').html 'You selected: ' + suggestion.value + ', ' + suggestion.data
#       return
#     onHint: (hint) ->
#       $('#autocomplete-ajax-x').val hint
#       return
#     onInvalidateSelection: ->
#       $('#selction-ajax').html 'You selected: none'
#       return
#     transformResult: (response) ->
#       { suggestions: $.map(JSON.parse(response), (dataItem) ->
#         {
#           value: dataItem.title
#           data: dataItem.id
#         }
#       ) }
#   return