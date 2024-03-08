package com.iesbelen.empresas.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iesbelen.empresas.entity.Empresa;
import com.iesbelen.empresas.repo.EmpresaRepo;

@Service
public class EmpresaService {
    

    @Autowired
    private EmpresaRepo empresaRepo;


    public List<Empresa> getAllEmpresas() {
        return this.empresaRepo.findAll();
    }

    public Optional<Empresa> getEmpresaById(long id) {
        return this.empresaRepo.findById(id);
    }

    public void createEmpresa(Empresa empresa) {
        this.empresaRepo.save(empresa);
    }

    public boolean deleteEmpresaById(long id) {
        boolean containsId = getEmpresaById(id).isPresent();
        if (containsId) {
            this.empresaRepo.deleteById(id);
            return true;
        }
        return false;
    }

    public boolean modifyEmpresa(Long id, Empresa empresa) {
        Optional<Empresa> opt = getEmpresaById(id);
        if (opt.isPresent()) {
            boolean equals = id.equals(empresa.getId());
            if (equals) {
                this.empresaRepo.save(empresa);
            }
            return equals;
        }
        return false;
    }

}
