import { Component, OnInit } from '@angular/core';
import { Cookie } from 'ng2-cookies/ng2-cookies';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

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
