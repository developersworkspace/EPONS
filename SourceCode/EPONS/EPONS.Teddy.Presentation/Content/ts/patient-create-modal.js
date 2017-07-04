var $;
var selectedTabId = $('#createPatientModal .modal-body .tab-content .tab-pane.active').attr('id');
$('#createPatientModal form').submit(function (ev) {
    ev.preventDefault();
    var form = $(this);
    var submitButton = form.find('[type=submit]');
    var text = submitButton.html();
    var loadingText = submitButton.attr('data-loading-text');
    if (loadingText == null || loadingText == '')
        submitButton.html('Please wait..');
    else
        submitButton.html(loadingText);
    submitButton.addClass('disabled');
    if (selectedTabId === 'tab1') {
        $('.field-validation-valid[data-valmsg-for=IdentificationNumber]').html('');
        var identificationNumber = $('#createPatientModal .modal-body .tab-content .tab-pane.active #IdentificationNumber').val();
        epons.validateIdentificationNumber(identificationNumber, function (result) {
            if (result) {
                form.submit();
                setTimeout(function () {
                    submitButton.removeClass('disabled');
                    submitButton.html(text);
                }, 8000);
            }
            else {
                $('.field-validation-valid[data-valmsg-for=IdentificationNumber]').html('Invalid Identification Number');
                submitButton.removeClass('disabled');
                submitButton.html(text);
            }
        });
    }
    else {
        form.submit();
        setTimeout(function () {
            submitButton.removeClass('disabled');
            submitButton.html(text);
        }, 8000);
    }
});
//# sourceMappingURL=patient-create-modal.js.map