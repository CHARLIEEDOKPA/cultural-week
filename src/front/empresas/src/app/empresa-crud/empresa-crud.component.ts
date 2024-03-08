import { Component, OnInit, inject } from '@angular/core';
import { Empresa } from '../empresa';
import { EmpresaService } from '../empresa.service';
import { DatePipe } from '@angular/common';
import { RouterLink } from '@angular/router';

@Component({
  selector: 'app-empresa-crud',
  standalone: true,
  imports: [DatePipe,RouterLink],
  templateUrl: './empresa-crud.component.html',
  styleUrl: './empresa-crud.component.css'
})
export class EmpresaCrudComponent implements OnInit {
 

  empresas!:Empresa[];
  private empresaService = inject(EmpresaService);

  ngOnInit(): void {
    this.empresaService.getAllEmpresas().subscribe(x => this.empresas = x)
  }

  deleteEmpresa(id:number) {
    this.empresaService.deleteEmpresa(id).subscribe(x => {
      this.ngOnInit()
    }, x => console.log("Error al eliminar"))
  }

}
