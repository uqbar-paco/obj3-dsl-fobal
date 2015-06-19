package edu.unq.obj3.model

import edu.unq.obj3.fobalClase.Equipo
import edu.unq.obj3.fobalClase.Partido

import static extension edu.unq.obj3.model.ResultadoExtensions.*

class PartidoExtensions {
	static def jugo(Partido part, Equipo equipo) {
		part.resultado.jugo(equipo)
	}

	static def gano(Partido part, Equipo equipo) {
		part.resultado.gano(equipo)
	}
	
}