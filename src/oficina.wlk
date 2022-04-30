import clientes.*
import remiserias.*

object oficina {
	var remisera1Actual
	var remisera2Actual
	
	method asignarRemiseras(remisera1, remisera2) {
		remisera1Actual = remisera1
		remisera2Actual = remisera2
	}
	
	method cambiarPrimerRemiserarPor(remisera){
		remisera1Actual = remisera
	}
	
	method cambiarSegundoRemiseraPor(remisera){
		remisera2Actual = remisera
	}
	
	method intercambiarRemiseras(){
		/*Excelente */
		self.asignarRemiseras(remisera2Actual, remisera1Actual)
	}
	
 	method remiseraElegidaParaViaje(cliente, kms){
		if (remisera1Actual.precioViaje(cliente, kms) >
			remisera2Actual.precioViaje(cliente, kms) &&
			remisera1Actual.precioViaje(cliente, kms) -
			remisera2Actual.precioViaje(cliente, kms) > 30
		){
			return remisera2Actual
		}else return remisera1Actual
		
	}

}
