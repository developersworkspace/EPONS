$(document).ready(function () {
    $('.important-text[data-action=show]').each(function () {

        var importantText = $(this);

        var label = importantText.attr('data-label');

        $('.' + label).addClass('hidden');

        importantText.click(function () {

            $('.' + label).removeClass('hidden');

            importantText.addClass('hidden');

            $('.important-text[data-action=hide][data-label=' + label + "]").removeClass('hidden');
            $('.important-text[data-action=show][data-label=' + label + "]").addClass('hidden');

        });

    });


    $('.important-text[data-action=hide]').each(function () {

        var importantText = $(this);

        var label = importantText.attr('data-label');

        importantText.click(function () {

            $('.' + label).addClass('hidden');

            importantText.removeClass('hidden');

            $('.important-text[data-action=show][data-label=' + label + "]").removeClass('hidden');
            $('.important-text[data-action=hide][data-label=' + label + "]").addClass('hidden');

        });

    });

});