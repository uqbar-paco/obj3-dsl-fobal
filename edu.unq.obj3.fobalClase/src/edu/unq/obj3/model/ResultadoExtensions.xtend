package edu.unq.obj3.model

import edu.unq.obj3.fobalClase.Equipo
import edu.unq.obj3.fobalClase.ResultadoCompacto
import edu.unq.obj3.fobalClase.ResultadoGano

class ResultadoExtensions {
	static def dispatch jugo(ResultadoCompacto resu, Equipo equipo) {
		equipo.equals(resu.local) || equipo.equals(resu.visitante) 
	}
	
	static def dispatch jugo(ResultadoGano resu, Equipo equipo) {
		equipo.equals(resu.ganador) || equipo.equals(resu.perdedor) 
	}

	static def dispatch gano(ResultadoCompacto resu, Equipo equipo) {
		if (resu.golesLocal > resu.golesVisitante)
			equipo.equals(resu.local)
		else if (resu.golesLocal < resu.golesVisitante)
			equipo.equals(resu.visitante)
		else // empataron
			false
	}

	static def dispatch gano(ResultadoGano resu, Equipo equipo) {
		equipo.equals(resu.ganador) 
	}

	static def dispatch equipoLocal(ResultadoCompacto resu) {
		resu.local
	}

	static def dispatch equipoVisitante(ResultadoCompacto resu) {
		resu.visitante
	}
	
	static def dispatch equipoLocal(ResultadoGano resu) {
		if (resu.ganoElLocal) 
			resu.ganador
		else
			resu.perdedor
	}
	
	static def dispatch equipoVisitante(ResultadoGano resu) {
		if (resu.ganoElVisitante) 
			resu.ganador
		else
			resu.perdedor
	}
	
}














