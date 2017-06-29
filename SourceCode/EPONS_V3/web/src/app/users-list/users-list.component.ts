import { Component, OnInit } from '@angular/core';
import { UserService } from '../user.service';
import { Cookie } from 'ng2-cookies/ng2-cookies';

@Component({
  selector: 'app-users-list',
  templateUrl: './users-list.component.html',
  styleUrls: ['./users-list.component.css']
})
export class UsersListComponent implements OnInit {

  public isLoading = false;
  public users = [];
  public query = null;
  public currentSkip = 0;

  public username = null;
  public emailAddress = null;

  constructor(private userService: UserService) { }

  ngOnInit() {
    this.loadUsers()
  }

  search() {
    this.currentSkip = 0;
    this.loadUsers();
  }

  loadUsers() {
    this.isLoading = true;
    let username = Cookie.get('auth_token');
    this.userService.list(username, this.query, this.currentSkip).subscribe((x) => {
      this.users = x;
      this.isLoading = false;
    });
  }

  nextPage() {
    this.currentSkip += 10;
    this.loadUsers();
  }

  previousPage() {
    this.currentSkip -= 10;
     this.loadUsers();
  }

  createUser() {
   this.userService.create(this.username, this.emailAddress).subscribe((x) => {
     window.location.href = "/#/administration/user/edit/" + x.Id;
   });
  }

}
