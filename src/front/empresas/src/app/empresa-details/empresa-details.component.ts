import { AfterViewInit, Component, OnInit, inject } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Empresa } from '../empresa';
import { EmpresaService } from '../empresa.service';
import { CommonModule, DatePipe } from '@angular/common';
import * as L from 'leaflet';

@Component({
  selector: 'app-empresa-details',
  standalone: true,
  imports: [DatePipe, CommonModule],
  templateUrl: './empresa-details.component.html',
  styleUrl: './empresa-details.component.css',
})
export class EmpresaDetailsComponent implements AfterViewInit {
  private route = inject(ActivatedRoute);
  private empresaService = inject(EmpresaService);

  empresa!: Empresa | undefined;
  private ID = Number(this.route.snapshot.paramMap.get('id'));

  ngAfterViewInit(): void {
    this.empresaService
      .getEmpresaById(this.ID)
      .subscribe((x) => (this.empresa = x));
    this.initMap();
  }

  private initMap() {
    this.empresaService.getEmpresaById(this.ID).subscribe((x) => {
      if (x) {
        setTimeout(() => {
          let coordenadas = JSON.parse(x.coordenadas!);
          const map = new L.Map('map').setView(coordenadas, 18);
          L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
            attribution:
              '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
          }).addTo(map);
          var mark = L.marker(coordenadas).addTo(map);
        }, 2000);
      }
    });
  }
}
