let $: any;



$('#createPatientModal form').submit(function (ev: Event) {
    ev.preventDefault();

    const selectedTabId: string = $('#createPatientModal .modal-body .tab-content .tab-pane.active').attr('id');

    const form = this;
    const formElement = $(this);

    const submitButton = formElement.find('[type=submit]');

    const text = submitButton.html();

    const loadingText = submitButton.attr('data-loading-text');

    if (loadingText == null || loadingText == '')
        submitButton.html('Please wait..');
    else
        submitButton.html(loadingText);

    submitButton.addClass('disabled');

    if (selectedTabId === 'tab1') {

        $('#createPatientModal .field-validation-valid[data-valmsg-for=IdentificationNumber]').html('');

        const identificationNumber = $('#createPatientModal .modal-body .tab-content .tab-pane.active #IdentificationNumber').val();

        epons.validateIdentificationNumber(identificationNumber, (result: boolean) => {
            if (result) {
                form.submit();
                setTimeout(function () {
                    submitButton.removeClass('disabled');
                    submitButton.html(text);
                }, 8000);
            } else {
                $('#createPatientModal .modal-body .tab-content .tab-pane.active .field-validation-valid[data-valmsg-for=IdentificationNumber]').html('Invalid Identification Number');
                submitButton.removeClass('disabled');
                submitButton.html(text);
            }
        });
    } else if (selectedTabId === 'tab3') {

        $('#createPatientModal .modal-body .tab-content .tab-pane.active .field-validation-valid[data-valmsg-for=Firstname]').html('');
        $('#createPatientModal .modal-body .tab-content .tab-pane.active .field-validation-valid[data-valmsg-for=Lastname]').html('');
        $('#createPatientModal .modal-body .tab-content .tab-pane.active .field-validation-valid[data-valmsg-for=DateOfBirth-Extra]').html('');

        const firstname = $('#createPatientModal .modal-body .tab-content .tab-pane.active #Firstname').val();
        const lastname = $('#createPatientModal .modal-body .tab-content .tab-pane.active #Lastname').val();
        const dateOfBirth = $('#createPatientModal .modal-body .tab-content .tab-pane.active #DateOfBirth').val();

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
        } else {
            submitButton.removeClass('disabled');
            submitButton.html(text);
        }
    } else {
        form.submit();
        setTimeout(function () {
            submitButton.removeClass('disabled');
            submitButton.html(text);
        }, 8000);
    }
});


