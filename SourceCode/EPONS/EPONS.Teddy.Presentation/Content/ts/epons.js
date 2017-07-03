var epons;
(function (epons) {
    var ValidatorGateway = (function () {
        function ValidatorGateway() {
            this.endpoint = 'http://api.sadfm.co.za';
        }
        ValidatorGateway.prototype.identificationNumber = function (identificationNumber, cb) {
            this.httpRequest('GET', this.endpoint + "/Validator/IdentificationNumber?identificationNumber=" + identificationNumber, null, function (result) {
                cb(result);
            });
        };
        ValidatorGateway.prototype.httpRequest = function (method, uri, body, cb) {
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.open(method, uri, true);
            xmlhttp.setRequestHeader("Content-type", "application/json");
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    cb(JSON.parse(xmlhttp.responseText));
                }
            };
            xmlhttp.send(body);
        };
        return ValidatorGateway;
    }());
    epons.ValidatorGateway = ValidatorGateway;
    function validateIdentificationNumber(identificationNumber, cb) {
        var validatorGateway = new ValidatorGateway();
        validatorGateway.identificationNumber(identificationNumber, cb);
    }
    epons.validateIdentificationNumber = validateIdentificationNumber;
})(epons || (epons = {}));
