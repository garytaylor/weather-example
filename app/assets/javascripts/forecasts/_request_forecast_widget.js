$(document).ready(function () {
    $('.widget.request-forecast .typeahead').typeahead({
        name: 'twitter-oss',
        remote: '/locations/search/%QUERY.json'

    }).bind('typeahead:selected', {}, function (event, nodeData) {

    });
});
