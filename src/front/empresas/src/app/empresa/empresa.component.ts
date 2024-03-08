import { Component, OnInit, inject } from '@angular/core';
import { EmpresaService } from '../empresa.service';
import { Observable } from 'rxjs';
import { Empresa } from '../empresa';
import { HttpErrorResponse } from '@angular/common/http';
import { DatePipe } from '@angular/common';
import { RouterLink } from '@angular/router';

@Component({
  selector: 'app-empresa',
  standalone: true,
  imports: [DatePipe,RouterLink],
  templateUrl: './empresa.component.html',
  styleUrl: './empresa.component.css'
})
export class EmpresaComponent implements OnInit{
  

  private empresaService = inject(EmpresaService);

  private empresas!:Empresa[]

  empresasFilter!:Empresa[]

  ngOnInit(): void {
    this.empresaService.getAllEmpresas().subscribe(x =>  {
      this.empresas = x
      this.empresasFilter = x
    }, (error:HttpErrorResponse) => {
      this.empresas = []
    })
  }

  filtrarPorSigloXX() {
    this.empresasFilter = this.empresas.filter(x => new Date(x.fundacion).getFullYear() < 2000)
  }

  filtrarPorSigloXXI() {
    this.empresasFilter = this.empresas.filter(x => new Date(x.fundacion).getFullYear() >= 2000)
  }

  todo() {
    this.empresasFilter = this.empresas
  }

}
