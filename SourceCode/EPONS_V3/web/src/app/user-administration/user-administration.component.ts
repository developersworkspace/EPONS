import { Component, OnInit } from '@angular/core';
import { Cookie } from 'ng2-cookies/ng2-cookies';

@Component({
  selector: 'app-user-administration',
  templateUrl: './user-administration.component.html',
  styleUrls: ['./user-administration.component.css']
})
export class UserAdministrationComponent implements OnInit {

  public isLoading = true;

  constructor() { }

  ngOnInit() {
    if (Cookie.get('auth_token') == null) {
      window.location.href = '/#/login';
    }else {
      this.isLoading = false;
    }
  }

}
