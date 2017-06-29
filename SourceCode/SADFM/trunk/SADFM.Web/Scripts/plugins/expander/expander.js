$(document).ready(function () {
    $('.expandable').each(function () {
        var expander = $(this);

        expander.find('[data-action=expand]').removeClass('hidden');

        expander.find('[data-action=expand]').click(function () {

            expander.find('.expandable-content').slideDown("slow");

            expander.find('[data-action=expand]').addClass('hidden');
            expander.find('[data-action=shrink]').removeClass('hidden');

        });

        expander.find('[data-action=shrink]').click(function () {

            expander.find('.expandable-content').slideUp("slow");

            expander.find('[data-action=shrink]').addClass('hidden');
            expander.find('[data-action=expand]').removeClass('hidden');
        });


    });




    $('.expandable.open').each(function () {
        var expander = $(this);

        expander.find('[data-action=expand]').click();
    });

});