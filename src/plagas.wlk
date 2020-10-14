class Mosquitos{
	var property poblacion 
	
	method puedeTransmitir(){ return poblacion > 10 and poblacion % 3 == 0}
	method nivelDeDanio(){ return poblacion }
	method atacar(elemento){elemento.SufrirAtaque()
		poblacion = poblacion + (poblacion * 0.1) 
	}
}

class Cucarachas inherits Mosquitos{
	var property pesoPromedio
	
	override method nivelDeDanio(){return poblacion / 2}
	override method puedeTransmitir(){
		return super() and pesoPromedio >= 10
	}
	override method atacar(elemento){
		 super(elemento) pesoPromedio = pesoPromedio + 2
	}
}

class Pulgas inherits Mosquitos{
	
	override method nivelDeDanio(){return poblacion * 2}
	override method puedeTransmitir(){return true}
	
}
class Garrapatas inherits Pulgas{
	
	override method atacar(elemento){
		elemento.SufrirAtaque()
		poblacion = poblacion + (poblacion * 0.2) 
	}
	
}