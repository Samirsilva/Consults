package com.consultas;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

public interface ConsultaRepository extends PagingAndSortingRepository<Conteudo, String>{

	@Query("Select c from Conteudo c where c.nome like %:filtro% or c.genero like %:filtro% or c.ano like %:filtro% or c.autor like %:filtro% or c.categoria like %:filtro%  order by ano,autor,genero,categoria,nome ")
	public List<Conteudo> findByFiltro(@Param("filtro") String filtro);	
}
