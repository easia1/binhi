$(document).on('turbolinks:load', function () {
    var options = {
        url: function (phrase) {
            return '/get_genus.json?q=' + phrase;
        },
        getValue: 'name',
        list: {
            match: {
                enabled: true,
            },
        },
    };

    $('#plant_genus_name').easyAutocomplete(options);
});
