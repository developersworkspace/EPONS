module epons {

    export class ValidatorGateway {

        private endpoint = 'http://api.sadfm.co.za';

        public identificationNumber(identificationNumber: string, cb: (result: boolean) => void): void {
            this.httpRequest('GET', `${this.endpoint}/Validator/IdentificationNumber?identificationNumber=${identificationNumber}`, null, (result: boolean) => {
                cb(result);
            });
        }

        private httpRequest(method: string, uri: string, body: string, cb: (body: any) => void) {
            const xmlhttp = new XMLHttpRequest();
            xmlhttp.open(method, uri, true);
            xmlhttp.setRequestHeader("Content-type", "application/json");
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    cb(JSON.parse(xmlhttp.responseText))
                }
            }
            xmlhttp.send(body);
        }
    }

    export function validateIdentificationNumber(identificationNumber: string, cb: (result: boolean) => void): void {
        const validatorGateway: ValidatorGateway = new ValidatorGateway();

        validatorGateway.identificationNumber(identificationNumber, cb);
    }

}

