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
import { Router } from '@angular/router';

@Component({
  selector: 'app-add-empresa',
  standalone: true,
  imports: [ReactiveFormsModule],
  templateUrl: './add-empresa.component.html',
  styleUrl: './add-empresa.component.css',
})
export class AddEmpresaComponent implements OnInit {
  addForm!: FormGroup;
  private empresaService = inject(EmpresaService);
  private router = inject(Router)

  ngOnInit(): void {
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
  }

  create() {
    let valueForm = this.addForm.value;
    let empresa = this.toEmpresaInterface(valueForm);

    this.empresaService.createEmpresa(empresa).subscribe(
      (x) => {
        alert(`Se ha añadido satisfactioriamente la empresa ${empresa.nombre}`)
        this.router.navigateByUrl("crud").then()
      },
      (err: HttpErrorResponse) => {
        alert('ERROR AL AÑADIR UNA EMPRESA');
      }
    );
  }

  private toEmpresaInterface(valueForm: any) {
    let empresa: Empresa = {
      id: 0,
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
