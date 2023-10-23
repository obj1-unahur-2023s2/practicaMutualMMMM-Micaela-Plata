class Viajes {
	var idiomas
	var implicaEsfuerzo
	var sirveParaBroncearse
	var diasQueDura
	
	method idiomas() = "español"
	
	method implicaEsfuerzo() = true
	
	method sirveParaBroncearse() = true
	
	method diasQueDura() = diasQueDura 
	
}

class ViajesDePlaya inherits Viajes {
	var largoDePlaya
	
	override method diasQueDura() = largoDePlaya/500
	
	override method implicaEsfuerzo() =  largoDePlaya > 1200 
	
}

class ExcursionesACiudad inherits Viajes {
	var cantidadDeAtracciones
	
	override method diasQueDura() = cantidadDeAtracciones/2
	
	override method implicaEsfuerzo() = cantidadDeAtracciones.between(5,8)
	
	override method sirveParaBroncearse() = false
}

class ExcursionesACiudadTropical inherits ExcursionesACiudad {
	
	override method diasQueDura() = super() +1
	
	override method sirveParaBroncearse() = true
}

class salidaDeTrekking inherits Viajes {
	var kmARecorrer
	var diasDeSolPorAnio
	
	override method diasQueDura() =
}
