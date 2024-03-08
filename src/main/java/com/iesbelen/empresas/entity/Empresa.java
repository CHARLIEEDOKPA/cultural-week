package com.iesbelen.empresas.entity;


import java.sql.Date;
import java.util.List;
import java.util.Set;

import jakarta.persistence.CollectionTable;
import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinColumns;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(
    name = "empresas",
    schema = "proyecto_empresas_tecnologicas"
)
public class Empresa {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "nombre",nullable = false, length = 100)
    private String nombre;

    @Column(name="historia", nullable = false, length = 3000)
    private String historia;

    @Column(name="lugar",nullable = false, length = 200)
    private String lugar;

    @Column(name="fundacion",nullable = false)
    private Date fundacion;

    @Column(name="foto", nullable = true)
    private String url;

    @Column(name="coordenadas", nullable = false)
    private String coordenadas;

    @ElementCollection
    @CollectionTable(name="empresas_tecnologias",joinColumns = @JoinColumn(name = "empresa_id"))
    @Column(name = "tecnologias")
    private Set<String> tecnologias;
}
