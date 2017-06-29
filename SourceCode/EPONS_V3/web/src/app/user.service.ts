import { Injectable } from '@angular/core';
import { Http, Response, Headers, RequestOptions } from '@angular/http';
import { Observable } from 'rxjs/Rx';
import { environment } from '../environments/environment';

// Import RxJs required methods
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/catch';


@Injectable()
export class UserService {

  constructor(private http: Http) { }

  validate(username, password) {
    return this.http.post(environment.apiUri + "/authentication/validateCredentials", {
      username: username,
      password: password
    }).map((res: Response) => res.json())
  }

  list(username, query, skip) {
    return this.http.post(environment.apiUri + "/user/list", {
      username: username,
      query: query,
      skip: skip
    }).map((res: Response) => res.json())
  }

  find(id) {
    return this.http.post(environment.apiUri + "/user/find", {
      userId: id
    }).map((res: Response) => res.json())
  }

  lock(id) {
    return this.http.post(environment.apiUri + "/user/lock", {
      userId: id
    }).map((res: Response) => res.json())
  }

  unlock(id) {
    return this.http.post(environment.apiUri + "/user/unlock", {
      userId: id
    }).map((res: Response) => res.json())
  }

  findFacilityPermissions(id) {
    return this.http.post(environment.apiUri + "/user/facilityPermissions", {
      userId: id
    }).map((res: Response) => res.json())
  }

  create(username, emailAddress) {
    return this.http.post(environment.apiUri + "/user/create", {
      username: username,
      emailAddress: emailAddress
    }).map((res: Response) => res.json())
  }
}
