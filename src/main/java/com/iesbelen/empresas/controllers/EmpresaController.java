package com.iesbelen.empresas.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.iesbelen.empresas.entity.Empresa;
import com.iesbelen.empresas.service.EmpresaService;



@RestController
@RequestMapping("empresa")
public class EmpresaController {
    

    @Autowired
    private EmpresaService empresaService;

    @GetMapping("all")
    public ResponseEntity<List<Empresa>> getAll() {
        List<Empresa> body = this.empresaService.getAllEmpresas();
        return new ResponseEntity<List<Empresa>>(body, HttpStatus.OK);
    }

    @PostMapping("create")
    public ResponseEntity saveEmpresa(@RequestBody Empresa empresa) {
        this.empresaService.createEmpresa(empresa);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }
    
    @GetMapping("{id}")
    public ResponseEntity<Empresa> getEmpresaById(@PathVariable long id) {
        Optional<Empresa> opt = this.empresaService.getEmpresaById(id);
        if (opt.isPresent()) {
            Empresa body = opt.get();
            return new ResponseEntity<Empresa>(body,HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

    @PutMapping("{id}")
    public ResponseEntity modifyEmpresa(@PathVariable long id, @RequestBody Empresa entity) {
        boolean modified = this.empresaService.modifyEmpresa(id, entity);
        HttpStatus status = modified ? HttpStatus.OK: HttpStatus.NOT_MODIFIED;
        return new ResponseEntity<>(status);
    }

    @DeleteMapping("{id}")
    public ResponseEntity removeEmpresa(@PathVariable long id) {
        boolean deleted = this.empresaService.deleteEmpresaById(id);
        HttpStatus status = deleted ? HttpStatus.OK:HttpStatus.NOT_FOUND;
        return new ResponseEntity<>(status);
    }

    
    
    
    

}
