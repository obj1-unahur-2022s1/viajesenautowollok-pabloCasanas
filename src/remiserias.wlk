import clientes.*

object roxana {
	/* Forma mas resumida */
	method precioViaje(cliente, kms)= kms * cliente.precioPorKilometro()
	 	 
}

object gabriela{
	
	method precioViaje(cliente, kms){
		return (kms * cliente.precioPorKilometro()) * 1.2
	}
}

object mariela {
	/* Bien utilizando el max() */
	method precioViaje(cliente, kms){
		return 50.max(cliente.precioPorKilometro() * kms)
		
	}
}

object juana {
	/* Intentá pasarlo a forma resumida*/
	method precioViaje(cliente, kms){
		if(kms <= 8){
			return 100
		}else return 200
	}
	
}

object lucia {
	/* Muy bien */
	var remiseraQueReemplaza
	
	method remiseraQueReemplaza() = remiseraQueReemplaza
	
	method remiseraQueReemplaza(remisera){
		remiseraQueReemplaza = remisera
	}
	
	method precioViaje(cliente, kms){
		return remiseraQueReemplaza.precioViaje(cliente, kms)
	}
}
	
	
	
	
	
	
	