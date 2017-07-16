var $;
$('#createPatientModal form').submit(function (ev) {
    ev.preventDefault();
    var selectedTabId = $('#createPatientModal .modal-body .tab-content .tab-pane.active').attr('id');
    var form = this;
    var formElement = $(this);
    var submitButton = formElement.find('[type=submit]');
    var text = submitButton.html();
    var loadingText = submitButton.attr('data-loading-text');
    if (loadingText == null || loadingText == '')
        submitButton.html('Please wait..');
    else
        submitButton.html(loadingText);
    submitButton.addClass('disabled');
    if (selectedTabId === 'tab1') {
        $('#createPatientModal .field-validation-valid[data-valmsg-for=IdentificationNumber]').html('');
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
                $('#createPatientModal .modal-body .tab-content .tab-pane.active .field-validation-valid[data-valmsg-for=IdentificationNumber]').html('Invalid Identification Number');
                submitButton.removeClass('disabled');
                submitButton.html(text);
            }
        });
    }
    else if (selectedTabId === 'tab3') {
        $('#createPatientModal .modal-body .tab-content .tab-pane.active .field-validation-valid[data-valmsg-for=Firstname]').html('');
        $('#createPatientModal .modal-body .tab-content .tab-pane.active .field-validation-valid[data-valmsg-for=Lastname]').html('');
        $('#createPatientModal .modal-body .tab-content .tab-pane.active .field-validation-valid[data-valmsg-for=DateOfBirth-Extra]').html('');
        var firstname = $('#createPatientModal .modal-body .tab-content .tab-pane.active #Firstname').val();
        var lastname = $('#createPatientModal .modal-body .tab-content .tab-pane.active #Lastname').val();
        var dateOfBirth = $('#createPatientModal .modal-body .tab-content .tab-pane.active #DateOfBirth').val();
        if (!firstname) {
            $('#createPatientModal .modal-body .tab-content .tab-pane.active .field-validation-valid[data-valmsg-for=Firstname]').html('Please enter a first name');
        }
        if (!lastname) {
            $('#createPatientModal .modal-body .tab-content .tab-pane.active .field-validation-valid[data-valmsg-for=Lastname]').html('Please enter a last name');
        }
        if (!dateOfBirth) {
            $('#createPatientModal .modal-body .tab-content .tab-pane.active .field-validation-valid[data-valmsg-for=DateOfBirth-Extra]').html('Please enter a date of birth');
        }
        if (firstname && lastname && dateOfBirth) {
            form.submit();
        }
        else {
            submitButton.removeClass('disabled');
            submitButton.html(text);
        }
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