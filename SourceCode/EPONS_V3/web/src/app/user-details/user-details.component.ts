import { Component, OnInit, Input } from '@angular/core';
import { UserService } from '../user.service';
import { Router, ActivatedRoute, Params } from '@angular/router';

@Component({
  selector: 'app-user-details',
  templateUrl: './user-details.component.html',
  styleUrls: ['./user-details.component.css']
})
export class UserDetailsComponent implements OnInit {

  @Input()
  public user = null;

  constructor(private userService: UserService, private route: ActivatedRoute) { }

  ngOnInit() {

  }

}
