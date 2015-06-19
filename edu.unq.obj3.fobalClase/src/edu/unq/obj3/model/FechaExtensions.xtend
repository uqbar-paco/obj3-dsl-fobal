package edu.unq.obj3.model

import edu.unq.obj3.fobalClase.Equipo
import edu.unq.obj3.fobalClase.Fecha

import static extension edu.unq.obj3.model.PartidoExtensions.*

class FechaExtensions {
	/*
	 * El partido de la fecha en que jugo el equipo dado,
	 * null si el equipo no jugo en esta fecha.
	 */
	static def partido(Fecha fecha, Equipo equipo) {
		fecha.partidos.findFirst [ part | part.jugo(equipo) ]
	}
}