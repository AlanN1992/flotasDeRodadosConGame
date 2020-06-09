import otros_rodados.*
import trafic.*

class Pedidos {
	var distancia
	var tiempoMaximo
	var cantidadPasajeros
	const coloresIncompatibles = []
	
	method setDistancia(newDistancia) { distancia = newDistancia }
	method setTiempoMaximo (newTiempoMax) { tiempoMaximo = newTiempoMax }
	method cantidadPasajeros (newCantidadPas) { cantidadPasajeros = newCantidadPas}
	method cantidadPas(){return cantidadPasajeros}
	method setColoresIncompatibles(newColor) { coloresIncompatibles.add(newColor) }
	method color(){return coloresIncompatibles}
	method tiempoMax(){return tiempoMaximo}
	
	method velocidadRequerida() { return (distancia / tiempoMaximo) }
	
	method diferenciaVelocidad(auto) { return (auto.velocidad_maxima() >= self.velocidadRequerida() + 10) }
	method capacidadAuto(auto) { return (auto.capacidad() <= cantidadPasajeros) }
	method autoNoIncompatile(auto) { return ( not coloresIncompatibles.contains({cosa => cosa.color()}) ) }
	
	method autoSatisfacePedido(auto) { return  ( self.diferenciaVelocidad(auto) && self.capacidadAuto(auto)  && self.autoNoIncompatile(auto) ) }
	
	method acelerar(){ tiempoMaximo = tiempoMaximo -1 }
	method relajar(){ tiempoMaximo = tiempoMaximo +1}
}
