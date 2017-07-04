let $: any;

const selectedTabId: string = $('#createPatientModal .modal-body .tab-content .tab-pane.active').attr('id');

$('#createPatientModal form').submit(function (ev: Event) {
    ev.preventDefault();
    const form = $(this);

    const submitButton = form.find('[type=submit]');

    const text = submitButton.html();

    const loadingText = submitButton.attr('data-loading-text');

    if (loadingText == null || loadingText == '')
        submitButton.html('Please wait..');
    else
        submitButton.html(loadingText);

    submitButton.addClass('disabled');

    if (selectedTabId === 'tab1') {

        $('.field-validation-valid[data-valmsg-for=IdentificationNumber]').html('');

        const identificationNumber = $('#createPatientModal .modal-body .tab-content .tab-pane.active #IdentificationNumber').val();

        epons.validateIdentificationNumber(identificationNumber, (result: boolean) => {
            if (result) {
                form.submit();
                setTimeout(function () {
                    submitButton.removeClass('disabled');
                    submitButton.html(text);
                }, 8000);
            } else {
                $('.field-validation-valid[data-valmsg-for=IdentificationNumber]').html('Invalid Identification Number');
                submitButton.removeClass('disabled');
                submitButton.html(text);
            }
        })
    } else {
        form.submit();
        setTimeout(function () {
            submitButton.removeClass('disabled');
            submitButton.html(text);
        }, 8000);
    }
});


