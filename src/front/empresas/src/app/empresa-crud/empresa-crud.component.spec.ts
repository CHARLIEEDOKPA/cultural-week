import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EmpresaCrudComponent } from './empresa-crud.component';

describe('EmpresaCrudComponent', () => {
  let component: EmpresaCrudComponent;
  let fixture: ComponentFixture<EmpresaCrudComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [EmpresaCrudComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(EmpresaCrudComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
