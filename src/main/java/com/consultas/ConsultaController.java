package com.consultas;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class ConsultaController {

	@Autowired
	private ConsultaRepository repository;
	
	@RequestMapping(value="/find/{filtro}", method=RequestMethod.GET)
	List<Conteudo> findByFiltro(@PathVariable("filtro") String filtro){
		return repository.findByFiltro(filtro);
		
	}
}
