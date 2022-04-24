

object ludmila {
	
	method precioPorKilometro() = 18
	
}

object anaMaria {
	var estaEstable = true
	
	method precioPorKilometro(){
		if(estaEstable){
			return 30
		}else return 25
	}
	
	method estaEstable() = estaEstable
	
	method cambiarSituacionEconomica(){
		if (estaEstable){
			estaEstable = false
		}else estaEstable =true
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
	var clientaActual
	
	method clientaParaQuienTrabaja() = clientaActual
	
	method clientaParaQuienTrabaja(clienta){
		clientaActual = clienta
	}
	
	method precioPorKilometro(){
		return clientaActual.precioPorKilometro() - 3
	}
}
