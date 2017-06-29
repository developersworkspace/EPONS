import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { environment } from '../../environments/environment';
import { Http, Response, Headers, RequestOptions } from '@angular/http';
import { Observable } from 'rxjs/Rx';


// Import RxJs required methods
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/catch';

@Component({
  selector: 'app-ajax-dropdown',
  templateUrl: './ajax-dropdown.component.html',
  styleUrls: ['./ajax-dropdown.component.css']
})
export class AjaxDropdownComponent implements OnInit {

  public value;

  public values;

  public selectedItem;

  public isOpen = false;

  @Input()
  public sourceUrl;

  @Output()
  trigger = new EventEmitter();

  constructor(private http: Http) {
    
  }

  selectItem(item) {
    this.selectedItem = item;
    this.trigger.emit(item);
    this.toggle();
  }

  ngOnInit() {
    if (this.sourceUrl != null) {
      this.http.get(environment.apiUri + this.sourceUrl).map((res: Response) => res.json()).subscribe((x) => {
        this.values = x;
      });
    }

  }


  toggle() {
    this.isOpen = this.isOpen? false: true;
  }

}
