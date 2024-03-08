import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Empresa } from './empresa';

@Injectable({
  providedIn: 'root'
})
export class EmpresaService {

  private URL = "http://localhost:8080/empresa/"

  constructor(private httpClient:HttpClient) { }

  public getAllEmpresas() {
    return this.httpClient.get<Empresa[]>(this.URL + "all")
  }

  public getEmpresaById(id:number) {
    return this.httpClient.get<Empresa | undefined>(this.URL + id)
  }

  public createEmpresa(empresa:Empresa) {
    return this.httpClient.post(this.URL + "create",empresa)
  }

  public updateEmpresaById(id:number, empresa:Empresa) {
    return this.httpClient.put(this.URL + id,empresa)
  }

  public deleteEmpresa(id:number) {
    return this.httpClient.delete(this.URL + id)
  }

}
