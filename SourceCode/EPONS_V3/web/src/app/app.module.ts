import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { RouterModule, Routes } from '@angular/router';

import { AppComponent } from './app.component';
import { LoginComponent } from './login/login.component';
import { HomeComponent } from './home/home.component';

import { UserService } from './user.service';
import { PatientService } from './patient.service';

import { ActivePatientsWidgetComponent } from './active-patients-widget/active-patients-widget.component';
import { DischargedPatientsWidgetComponent } from './discharged-patients-widget/discharged-patients-widget.component';
import { NavComponent } from './nav/nav.component';
import { PatientsListComponent } from './patients-list/patients-list.component';
import { UserAdministrationComponent } from './user-administration/user-administration.component';
import { UsersListComponent } from './users-list/users-list.component';
import { UserEditComponent } from './user-edit/user-edit.component';
import { UserDetailsComponent } from './user-details/user-details.component';
import { UserFacilityPermissionsComponent } from './user-facility-permissions/user-facility-permissions.component';
import { FooterComponent } from './footer/footer.component';
import { AjaxDropdownComponent } from './ajax-dropdown/ajax-dropdown.component';


const appRoutes: Routes = [
  { path: '', component: HomeComponent },
  { path: 'administration/user', component: UserAdministrationComponent },
  { path: 'login', component: LoginComponent },
  { path: 'administration/user/edit/:id', component: UserEditComponent },
];


@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    HomeComponent,
    ActivePatientsWidgetComponent,
    DischargedPatientsWidgetComponent,
    NavComponent,
    PatientsListComponent,
    UserAdministrationComponent,
    UsersListComponent,
    UserEditComponent,
    UserDetailsComponent,
    UserFacilityPermissionsComponent,
    FooterComponent,
    AjaxDropdownComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    RouterModule.forRoot(appRoutes, { useHash: true })
  ],
  providers: [UserService, PatientService],
  bootstrap: [AppComponent]
})
export class AppModule { }
