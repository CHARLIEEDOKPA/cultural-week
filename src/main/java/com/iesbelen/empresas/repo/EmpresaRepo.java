package com.iesbelen.empresas.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.iesbelen.empresas.entity.Empresa;

@Repository
public interface EmpresaRepo extends JpaRepository<Empresa,Long> {
    
}
