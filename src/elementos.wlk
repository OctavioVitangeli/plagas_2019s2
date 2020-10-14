import plagas.*

class Hogar{
	
	var property nivelDeMugre = 50
	var property confort = 100
		
		method esBueno(){ return nivelDeMugre == confort /2 or nivelDeMugre < confort /2 }
		method SufrirAtaque(plaga){ nivelDeMugre += plaga.nivelDeDanio()}	
}
class Huerta{
	
	var property capacidadDeProduccion = 10
	
	method esBuena(nivel){ return capacidadDeProduccion > nivel}
	
	method SufrirAtaque(plaga){ return if(plaga.puedeTransmitir()){ 
	 	(capacidadDeProduccion - (plaga.nivelDeDanio() * 0.1) - 10)
	 }
	 	else{ capacidadDeProduccion - (plaga.nivelDeDanio() * 0.1 )}
	 	
	 }
}

class Mascota{
	
	var property nivelDeSalud = null
	
	method esBuena(){ return nivelDeSalud > 250}
	
	method SufrirAtaque(plaga){return 
		if (plaga.puedeTransmitir()){ nivelDeSalud  -= plaga.nivelDeDanio()}
		else{}
		
	}
}

class Barrio{
	const elementos = []
	
	method agregarElementos(elemento){ elementos.add(elemento)}
	
	method esCopado(){ return elementos.count({ e => e.esBueno() }) >= elementos.size() 
		
	}
}








