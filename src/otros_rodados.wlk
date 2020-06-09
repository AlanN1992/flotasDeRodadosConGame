import wollok.game.*

object rojo{ method image(){return "autitorojo.png"}}
object verde{ method image(){return "green_car.png"}}
object azul{ method image(){return "blue_car.png"}}

class Corsa {
	
	var property imagen = "autitorojo.png"
	var property position
	var color
	const listaPosiciones = []
	
	method moveteDerecha(){
		self.position(self.position().right(1))
		listaPosiciones.add(position)
	}
	
	method moveteIzquierda(){
		self.position(self.position().left(1))
		listaPosiciones.add(position)
	}
	
	method moveteArriba(){
		self.position(self.position().up(1))
		listaPosiciones.add(position)
	}
	
	method moveteAbajo(){
		self.position(self.position().down(1))
		listaPosiciones.add(position)
	}
	
	method moveteA(unaPosicion){
		self.position(unaPosicion)
		listaPosiciones.add(position)
	}
	
	method showListaPosiciones(){return listaPosiciones}
	
	method pasoPor(posicion){ return listaPosiciones.contains(posicion)}
	method pasoPorFila(numero) { return listaPosiciones.contains(numero)}
	method recorrioFilas(lista_de_numeros) { return listaPosiciones.contains(lista_de_numeros)} 
	
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
