object interiorComodo {
	method capacidad(){return 5}        
    method peso(){return 700}
}

object interiorPopular{
	method capacidad(){ return 12 }
	method peso(){ return 1000 }
}

object motorPulenta{
	method peso(){ return 800}
	method velocidad_maxima(){ return 130}	
}

object motorBaraton{
	method peso(){ return 500}
	method velocidad_maxima(){ return 80}	
}

object trafic {
	
	var interior
	var motor
	
	method setInteriorMotor(newInterior, newMotor){
		interior = newInterior
		motor = newMotor
	}
	
	method capacidad(){ return interior.capacidad() }
	
	method velocidad_maxima(){ return motor.velocidad_maxima() }
	
	method color(){return ('blanco')}
	
	method peso(){ return 4000 + interior.peso() + motor.peso() }
}
