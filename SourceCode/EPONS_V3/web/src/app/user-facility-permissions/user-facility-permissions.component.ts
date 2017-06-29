import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-user-facility-permissions',
  templateUrl: './user-facility-permissions.component.html',
  styleUrls: ['./user-facility-permissions.component.css']
})
export class UserFacilityPermissionsComponent implements OnInit {

  @Input()
  public facilityPermissions = null;

  @Input()
  public user = null;

  public facility;

  public permission;

  constructor() { }

  ngOnInit() {
  }

  onChangeFacilityId(value) {
    this.facility = value;
  }

  onChangePermissionId(value) {
    this.permission = value;
  }

}
