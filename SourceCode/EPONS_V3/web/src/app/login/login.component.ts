import { Component, OnInit } from '@angular/core';
import { Cookie } from 'ng2-cookies/ng2-cookies';
import { UserService } from '../user.service';


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  public username = '';
  public password = '';

  public isValidUsername = true;
  public isValidPassword = true;
  public isValidForm = true;

  public message = null;

  constructor(private userService: UserService) { 
  }

  ngOnInit() {
  }


  validateForm() {
    this.isValidUsername = this.username == null || this.username == '' ? false : true;
    this.isValidPassword = this.password == null || this.password == '' ? false : true;
    
    this.isValidForm = this.isValidUsername && this.isValidPassword;

    this.message = null;
  }

  login() {
    this.validateForm();

    if (!this.isValidUsername || !this.isValidPassword)
      return;

    this.userService.validate(this.username, this.password).subscribe((x) => {
      Cookie.set('auth_token', x.token);
      window.location.href = '/';
    },
      (x) => {
        if (x.status == 401) {
          this.message = 'Invalid login credentials';
        } else {
          alert('Error occurred!!');
        }
      });
  }

}
