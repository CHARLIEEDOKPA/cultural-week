import { Empresa } from './../empresa';
import { Component, OnInit, inject } from '@angular/core';
import {
  FormControl,
  FormGroup,
  ReactiveFormsModule,
  Validators,
} from '@angular/forms';
import { EmpresaService } from '../empresa.service';
import { HttpErrorResponse } from '@angular/common/http';
import { ActivatedRoute, Router } from '@angular/router';
import { DatePipe } from '@angular/common';

@Component({
  selector: 'app-add-empresa',
  standalone: true,
  imports: [ReactiveFormsModule,DatePipe],
  templateUrl: './edit-empresa.component.html',
  styleUrl: './edit-empresa.component.css',
})
export class EditEmpresaComponent implements OnInit {
  addForm!: FormGroup;
  empresa!:Empresa | undefined;
  private empresaService = inject(EmpresaService);
  private route = inject(ActivatedRoute)
  private router = inject(Router)

  coordenadas!:number[]
  tecnologias!:string

  ngOnInit(): void {
    const ID = Number(this.route.snapshot.paramMap.get("id"))
    this.addForm = new FormGroup({
      nombre: new FormControl('', Validators.required),
      lugar: new FormControl('', Validators.required),
      tecnologias: new FormControl('', Validators.required),
      coordenadaY: new FormControl('', Validators.required),
      coordenadaX: new FormControl('', Validators.required),
      fundacion: new FormControl('', Validators.required),
      url: new FormControl(''),
      historia: new FormControl('', Validators.required),
    });
    this.empresaService.getEmpresaById(ID).subscribe(x => {
      this.empresa = x
      this.coordenadas = JSON.parse(x?.coordenadas!)
      this.tecnologias = x?.tecnologias.join(",")!
    })
  }

  edit(id:number) {
    let valueForm = this.addForm.value;
    let empresa = this.toEmpresaInterface(valueForm,id);
    
    this.empresaService.updateEmpresaById(id,empresa).subscribe(
      (x) => this.showEditMessageAndRedirect(),
      (err: HttpErrorResponse) => {
        alert('ERROR AL EDITAR UNA EMPRESA');
      }
    );
  }

  private showEditMessageAndRedirect() {
    alert(`Se ha editado satisfactioriamente la empresa`)
    this.router.navigateByUrl("crud").then()
  }

  private toEmpresaInterface(valueForm: any,id = 0) {
    let empresa: Empresa = {
      id: id,
      nombre: valueForm.nombre as string,
      lugar: valueForm.lugar as string,
      tecnologias: valueForm.tecnologias
        .split(',')
        .map((x) => x.trim()) as string[],
      fundacion: new Date(valueForm.fundacion).getTime(),
      url: valueForm.url as string,
      historia: valueForm.historia as string,
      coordenadas: `[${valueForm.coordenadaY},${valueForm.coordenadaX}]`,
    };

    return empresa;
  }
}
