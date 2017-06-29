import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute, Params } from '@angular/router';
import { UserService } from '../user.service';
import { Cookie } from 'ng2-cookies/ng2-cookies';

@Component({
  selector: 'app-user-edit',
  templateUrl: './user-edit.component.html',
  styleUrls: ['./user-edit.component.css']
})
export class UserEditComponent implements OnInit {

  public user = null;
  public facilityPermissions = null;
  public isLoading = true;

  constructor(private userService: UserService, private route: ActivatedRoute) { }

  ngOnInit() {
    if (Cookie.get('auth_token') == null) {
      window.location.href = '/#/login';
    } else {
      this.isLoading = false;
    }

    this.route.params.subscribe(params => {
      this.userService.find(params['id']).subscribe((x) => {
        this.user = x;
      });

      this.userService.findFacilityPermissions(params['id']).subscribe((x) => {
        this.facilityPermissions = x;
      });
    });
  }

  lock() {
    this.userService.lock(this.user.Id).subscribe((x) => {
      this.user.IsActive = false;
    });
  }

  unlock() {
    this.userService.unlock(this.user.Id).subscribe((x) => {
      this.user.IsActive = true;
    });
  }
}
