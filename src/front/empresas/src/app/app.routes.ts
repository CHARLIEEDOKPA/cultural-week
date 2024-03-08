import { Routes } from '@angular/router';
import { EmpresaComponent } from './empresa/empresa.component';
import { EmpresaDetailsComponent } from './empresa-details/empresa-details.component';
import { EmpresaCrudComponent } from './empresa-crud/empresa-crud.component';
import { AddEmpresaComponent } from './add-empresa/add-empresa.component';
import { EditEmpresaComponent } from './edit-empresa/edit-empresa.component';

export const routes: Routes = [
    {path:'',redirectTo:'empresas',pathMatch: "full"},
    {path:"empresas", component:EmpresaComponent },
    {path:"empresas/:id",component:EmpresaDetailsComponent},
    {path:"crud",component:EmpresaCrudComponent},
    {path:"crud/add",component:AddEmpresaComponent},
    {path:"crud/edit/:id",component:EditEmpresaComponent}
];
