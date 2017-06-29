import { Injectable } from '@angular/core';
import { Http, Response, Headers, RequestOptions } from '@angular/http';
import { Observable } from 'rxjs/Rx';

// Import RxJs required methods
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/catch';

@Injectable()
export class PatientService {

  constructor(private http: Http) { }

  list(username, query, type) {
    return this.http.post("http://localhost:5594/api/Patient/List", {
      username: username,
      query: query,
      type: type
    }).map((res: Response) => res.json())
  }
}
