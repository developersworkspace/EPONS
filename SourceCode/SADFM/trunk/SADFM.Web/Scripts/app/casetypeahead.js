function initCaseTypeAhead() {
    $('.typeahead').typeahead({
        hint: true,
        highlight: true,
        minLength: 3
    },
    {
        name: 'states',
        displayKey: 'DisplayName',
        source: function (search, renderer) {
            $.get("/Administration/GetICD10Codes?query=" + search, function (result) {
                renderer(result);
            });
        },
        templates: {
            empty: [
                '<div class="empty-message">',
                'No ICD10 code matches your query',
                '</div>'
            ].join('\n'),
            suggestion: function (rx) {
                return '<p><strong>' + rx.Name + '</strong> – ' + rx.Description + '</p>'
            }
        }
    });

}