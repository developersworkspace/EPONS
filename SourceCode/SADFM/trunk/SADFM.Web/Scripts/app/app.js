var Alert = new CustomAlert();

function Post(url, data, onSuccess, onError) {
    $.ajax({
        url: url,
        data: data,
        type: "POST",
        dataType: "json",
        success: function (result) {
            if (result.Success) {
                onSuccess(result);
            } else {
                if (onError == null) {
                    toastr.error(result.Message, 'ERROR!');
                } else {
                    onError(result);
                }
            }
        },
        error: function (x1, x2, x3) {
            onError();
            toastr.error(x2, 'ERROR!');
        }
    });
}

function CustomAlert() {
    this.render = function (dialog) {
        var winW = window.innerWidth;
        var winH = window.innerHeight;
        var dialogoverlay = document.getElementById('dialogoverlay');
        var dialogbox = document.getElementById('dialogbox');
        //dialogoverlay.style.display = "block";
        dialogoverlay.style.height = winH + "px";
        dialogbox.style.left = (winW / 2) - (550 * .5) + "px";
        dialogbox.style.top = "100px";
        dialogbox.style.display = "block";
        document.getElementById('dialogboxhead').innerHTML = "Acknowledge This Message";
        document.getElementById('dialogboxbody').innerHTML = dialog;
        document.getElementById('dialogboxfoot').innerHTML = '<button onclick="Alert.ok()">OK</button>';
    }
    this.ok = function () {
        document.getElementById('dialogbox').style.display = "none";
        document.getElementById('dialogoverlay').style.display = "none";
    }
}

function ConfirmDialog(title, text, onYes, buttonClass) {
    if (buttonClass === undefined)
        buttonClass = "btn-primary";
    $("#layoutDialog .modal-title").html(title);
    $("#layoutDialog .modal-body").html(text);
    $("#layoutDialog #layoutDialogCancel").attr("class", "btn btn-white");
    $("#layoutDialog #layoutDialogOK").unbind("click");
    $("#layoutDialog #layoutDialogOK").css("display", "");
    $("#layoutDialog #layoutDialogOK").attr("class", "btn " + buttonClass);
    $("#layoutDialog #layoutDialogOK").bind("click", onYes);
    $("#layoutDialog").modal("show");
}

function HideConfirmDialog() {
    $("#layoutDialog").modal("hide");
}

function MessageDialog(title, text, buttonClass) {
    if (buttonClass === undefined)
        buttonClass = "btn-primary";
    $("#layoutDialog .modal-title").html(title);
    $("#layoutDialog .modal-body").html(text);
    $("#layoutDialog #layoutDialogOK").unbind("click");
    $("#layoutDialog #layoutDialogOK").css("display", "none");
    $("#layoutDialog #layoutDialogCancel").attr("class", "btn " + buttonClass);
    $("#layoutDialog").modal("show");
}

function ConfirmChangePassword(new1, new2) {
    if (new1.length < 6) {
        toastr.error("Your password must be at least 6 characters", "Invalid new password");
        return false;
    }
    if (new1 != new2) {
        toastr.error("Your passwords do not match.  Ensure that the new password and confirm password are the same", "Invalid new password");
        return false;
    }
    return true;
}

function validateEmail(element) {

    var result = false;

    if ($(element).val() == null || $(element).val() == '') {
        result = true;
    } else {


        var re = /^(([^<>()[\]\\.,;:\s@@"]+(\.[^<>()[\]\\.,;:\s@@"]+)*)|(".+"))@@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

        result = re.test($(element).val());
    }

    $(element).css('border-color', 'red');

    return result;
}