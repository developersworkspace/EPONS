import { Component, OnInit } from '@angular/core';
import { PatientService } from '../patient.service';
import { Cookie } from 'ng2-cookies/ng2-cookies';

@Component({
  selector: 'app-patients-list',
  templateUrl: './patients-list.component.html',
  styleUrls: ['./patients-list.component.css']
})
export class PatientsListComponent implements OnInit {

  public patients = [];
  public query = null;
  public isLoading = false;
  public type = 'active';

  constructor(private patientService: PatientService) {
  }

  ngOnInit() {
    this.search();
  }

  search() {
    this.isLoading = true;
    this.patientService.list(Cookie.get('auth_token'), this.query, this.type).subscribe((x) => {
      this.patients = x;
      this.isLoading = false;
    });
  }

  changeType(type) {
    this.type = type;
    this.search();
  }

}
