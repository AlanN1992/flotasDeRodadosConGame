class Corsa {
	
	var color
	
	method capacidad(){
		return (4)
	}
	
	method velocidad_maxima(){
		return (150)
	}
	
	method setColor(newColor){
		color = newColor
	}
	
	method color(){ 
		return (color)	
	}
	
	method peso(){
		return (1300)
	}
}

class RenaultKwid {
	
	var tanqueGas
	
	method tieneTanqueGas(trueFalse){
		tanqueGas = trueFalse
	}
	
	method capacidad(){
		if(tanqueGas){return (3)}
		else {return (4)}
	}
	
	method velocidad_maxima(){
		if(tanqueGas){return (120)}
		else {return (110)}		
	}
	
	method color(){
		return ('azul')
	}
	
	method peso(){
		if(tanqueGas){return (1200+150)}
		else {return (1200)}		
	}
	
}

class AutosEspeciales {
	
	var capacidad 
	var velocidad
	var color
	var peso
	
	
	method setCapacidad(newCapacidad){
		capacidad = newCapacidad
	}
	
	method capacidad(){
		return (capacidad)
	}
	
	method setVelocidad(newVelocidad){
		velocidad = newVelocidad
	}
	
	method velocidad_maxima(){
		return (velocidad)
	}
	
	method setColor(newColor){
		color = newColor
	}
	
	method color(){
		return (color)
	}
	
	method setPeso(newPeso){
		peso = newPeso
	}
	
	method peso(){
		return (peso)	
	}
	
}
