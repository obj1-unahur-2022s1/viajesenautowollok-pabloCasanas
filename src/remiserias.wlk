import clientes.*

object roxana {
	
	method precioViaje(cliente, kms){
	 	return 
	 	 kms * cliente.precioPorKilometro()
	 
	 }
		 
}

object gabriela{
	
	method precioViaje(cliente, kms){
		return (kms * cliente.precioPorKilometro()) * 1.2
	}
}

object mariela {
	
	method precioViaje(cliente, kms){
		return 50.max(cliente.precioPorKilometro() * kms)
		
	}
}

object juana {
	
	method precioViaje(cliente, kms){
		if(kms <= 8){
			return 100
		}else return 200
	}
	
}

object lucia {
	var remiseraQueReemplaza
	
	method remiseraQueReemplaza() = remiseraQueReemplaza
	
	method remiseraQueReemplaza(remisera){
		remiseraQueReemplaza = remisera
	}
	
	method precioViaje(cliente, kms){
		return remiseraQueReemplaza.precioViaje(cliente, kms)
	}
}
	
	
	
	
	
	
	