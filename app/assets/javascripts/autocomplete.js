/*jslint  browser: true, white: true, plusplus: true */
/*global $, countries */

document.addEventListener("turbolinks:load", function() {
    $(document).ready(function() {
        $('#autocomplete-dynamic').autocomplete({
            serviceUrl: '/schools/search' ,
            minChars:2, 
            deferRequestBy: 200,
            showNoSuggestionNotice: true,
            noSuggestionNotice: 'Sorry, no matching results',
            transformResult: function(response) {
                return {
                    suggestions: $.map(JSON.parse(response), function(dataItem) {
                        return { value: dataItem.title, data: dataItem.id };
                    })
                };
            }
    
        });
    });
  });