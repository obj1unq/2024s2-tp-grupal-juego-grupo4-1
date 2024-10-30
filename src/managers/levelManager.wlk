
import escenarios.levels.level1.*

object levelManager {

    var levelActual = level1
    
    method hayHelado(){
        return levelActual.mapa().hayHelados()
    }

    method haySolido(_position) {
		return game.getObjectsIn(_position).any({cosa => cosa.solida()})
	}

    method comioTodo(){
        if(self.hayHelado()){// PROBLEMA ACA
            self.pasarDeNivel()
            levelActual.iniciarNivel()
        }
    }

    method iniciarNivel(){
        levelActual.iniciarNivel()
    }

    method pasarDeNivel(){
        levelActual = levelActual.siguienteNivel()
    }

    method comioHelado(helado){
        self.comioTodo()
    }
}