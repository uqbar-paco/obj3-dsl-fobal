package edu.unq.obj3.model

import edu.unq.obj3.fobalClase.Equipo
import edu.unq.obj3.fobalClase.Fecha

import static extension edu.unq.obj3.model.FechaExtensions.*
import static extension edu.unq.obj3.model.PartidoExtensions.*

class EquipoExtensions {
	static def getPuntos(Equipo equipo) {
		equipo.partidosGanados.size * 3 
//		+ 
//		equipo.partidosEmpatados.size 
	}
	
	static def getPartidosGanados(Equipo equipo) {
		equipo.partidosQueJugo.
			filter [ partido | partido.gano(equipo) ]
		
	}
	
	def static partidosQueJugo(Equipo equipo) {
		equipo.eResource.allContents.
			filter(Fecha).
			map [ fecha | fecha.partido(equipo) ].
			filter [ partido | partido != null ]
	}

//	static def getPartidosEmpatados(Equipo equipo) {
//		equipo.partidosQueJugo.
//			filter [ partido | partido.empate ]
//	}
}