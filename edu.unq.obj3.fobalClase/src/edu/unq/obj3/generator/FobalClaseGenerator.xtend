/*
 * generated by Xtext
 */
package edu.unq.obj3.generator

import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.IGenerator
import org.eclipse.xtext.generator.IFileSystemAccess
import edu.unq.obj3.fobalClase.Equipo

import static extension edu.unq.obj3.model.EquipoExtensions.*

/**
 * Generates code from your model files on save.
 * 
 * see http://www.eclipse.org/Xtext/documentation.html#TutorialCodeGeneration
 */
class FobalClaseGenerator implements IGenerator {
	
	override void doGenerate(Resource resource, IFileSystemAccess fsa) {
		val equipos = resource.allContents.
			filter(Equipo).toList.sortBy[ name ]
			
		fsa.generateFile(
		'equipos.txt',
		'''Estos son los equipos:
«FOR equipo: equipos»
- «equipo.name» hizo «equipo.puntos»
«ENDFOR»
'''
		) 
	}
}















