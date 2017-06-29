function initCase() {

    $('.error').css("display", "none");

    $('.twitter-typeahead').css("width", "100%");

    $('#btn-newcareplan').click(function () {
        AddNewScale();
    });

    $('#addCareDialogCancel').click(function () {
        $('#addCareDialog').modal('hide');
    });



    $('#tblCarePlan').DataTable({
        paging: false,
        ordering: false,
        searching: false,
        info: false,
        autoWidth: false,
        "oLanguage": {
            "sProcessing": "<img src='/Images/loading.gif' height='25'/>"
        },
        columns: [
            { data: "ScaleDescription" },
            { data: "FrequencyDescription" }
        ]
    });

    $('#dateofbirth .input-group.date').datepicker({
        format: "dd M yyyy",
        autoclose: true
    }).on("show", function (e) {
        $("div.datepicker").css("z-index", 1000000);
    });
    $('#caseStartDate .input-group.date').datepicker({
        format: "dd M yyyy",
        autoclose: true,
        endDate: new Date()
    }).on("show", function (e) {
        $("div.datepicker").css("z-index", 1000000);
    });

    $('#caseEndDate .input-group.date').datepicker({
        format: "dd M yyyy",
        autoclose: true,
        endDate: new Date()
    }).on("show", function (e) {
        $("div.datepicker").css("z-index", 1000000);
    });



    $(".chosen-select").chosen({
        "width": "100%",
        disable_search_threshold: 2
    });

}

function AddNewScale() {


    $('#ScaleID option').css('display','block');

    var selectedScales = $('#tblCarePlan').DataTable().rows().data()
    for (i = 0; i < selectedScales.length; i++) {
        $('#ScaleID option[value="' + selectedScales[i].ScaleID + '"]').css('display', 'none');;
    }


    $('#ScaleID').val('');
    $('#ScaleID').trigger("chosen:updated");

    $('#FrequencyID').val('');
    $('#FrequencyID').trigger("chosen:updated");

    $('#addCareDialogOK').html('Add');
    $('#addscale-title').html('Add a Scale');

    $("#addCareDialogOK").unbind("click")
    $('#addCareDialogOK').click(function () {
        scale = $("#ScaleID option:selected");
        freq = $("#FrequencyID option:selected");

        if (scale.val() == "" || freq.val() == "") {
            $('.error').css("display", "block");
            return;
        }

        $("#tblCarePlan").DataTable().row.add({
            ScaleID: scale.val(),
            ScaleDescription: scale.text(),
            FrequencyID: freq.val(),
            FrequencyDescription: freq.text(),
            CaseScaleId: null,
            View: false
        }).draw();

        $('#ScaleID').val(2);
        $('#ScaleID').trigger("chosen:updated");

        $('#FrequencyID').val(2);
        $('#FrequencyID').trigger("chosen:updated");

        $('.error').css("display", "none");

        $('#addCareDialog').modal('hide');

    });


    $('#addCareDialog').modal('show');
}

function EditScale(data, row) {

    $('#ScaleID').val(data.ScaleID);
    $('#ScaleID').trigger("chosen:updated");

    $('#FrequencyID').val(data.FrequencyID);
    $('#FrequencyID').trigger("chosen:updated");

    $('#addCareDialogOK').html('Save');
    $('#addscale-title').html('Edit Scale');


    $("#addCareDialogOK").unbind("click")
    $('#addCareDialogOK').click(function () {
        scale = $("#ScaleID option:selected");
        freq = $("#FrequencyID option:selected");

        if (scale.val() == "" || freq.val() == "") {
            $('.error').css("display", "block");
            return;
        }

        row.remove().draw();

        $("#tblCarePlan").DataTable().row.add({
            ScaleID: scale.val(),
            ScaleDescription: scale.text(),
            FrequencyID: freq.val(),
            FrequencyDescription: freq.text(),
            CaseScaleId: data.CaseScaleId
        }).draw();

        $('#ScaleID').val(2);
        $('#ScaleID').trigger("chosen:updated");

        $('#FrequencyID').val(2);
        $('#FrequencyID').trigger("chosen:updated");

        $('.error').css("display", "none");

        $('#addCareDialog').modal('hide');

    });

    $('#addCareDialog').modal('show');
}
