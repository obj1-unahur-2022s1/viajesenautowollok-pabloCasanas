

object ludmila {
	
	method precioPorKilometro() = 18
	
}

object anaMaria {
	var estaEstable = true
	/* Otra Forma más resumida*/
	method precioPorKilometro()= if(estaEstable){30}else{25}
	
	
	method estaEstable() = estaEstable
	
	method cambiarSituacionEconomica(){
		/*Voy invirtiendo de true a false y de false a true */
		estaEstable = !estaEstable
	}
	
}

object teresa {
	var valor = 22
	method precioPorKilometro() = valor
	
	method cambiarPrecio(nuevoValor){
		valor = nuevoValor
	}
	
}

object melina {
	/*Muy Bien */
	var clientaActual
	
	method clientaParaQuienTrabaja() = clientaActual
	
	method clientaParaQuienTrabaja(clienta){
		clientaActual = clienta
	}
	
	method precioPorKilometro(){
		return clientaActual.precioPorKilometro() - 3
	}
}
