import trafic.*
import otros_rodados.*

class Dependencia {
	
	var dependencia
	var cantEmplDependencia	
	const flota = []
	
	method setDependencia (newDependencia,cantEmpleados){
		dependencia = newDependencia
		cantEmplDependencia = cantEmpleados 
	}
	
	method tamanioFlota(){
		return (flota.size())
	}
	
	method agregarAFlota(rodado) {
			flota.add(rodado)
	}

	method quitarDeFlota(rodado){
		flota.remove(rodado)
	}
	
	method pesoTotalFlota(){
		 return( flota.sum({cosa => cosa.peso()}) )
	}
	
	method estaBienEquipada(){
		var velocidad
		velocidad = flota.all({cosa => cosa.velocidad_maxima() >= 100})
		return (self.tamanioFlota() >= 3 && velocidad)
	}
	
	method capacidadTotalEnColor(color){
		var capacidadFlota
		var rodadosColor
		rodadosColor = flota.filter({cosa => cosa.color() == color}) 
		capacidadFlota = rodadosColor.sum({cosa => cosa.capacidad()})
		return (capacidadFlota)
		}
	
	method colorDelRodadoMasRapido(){
		
		var rodadoMasRapido
		rodadoMasRapido = flota.max({cosa => cosa.velocidad_maxima()})
		return (rodadoMasRapido.color())
	}
	
	method capacidadFaltante(){
		return (cantEmplDependencia - flota.sum({cosa => cosa.capacidad()}))
	}
	
		
	method esGrande(){
		return(self.tamanioFlota() >= 5 && cantEmplDependencia >= 40)
	}
}
