import personajes.pacman.*
import wollok.game.*
import src.comidas.helados.*
import src.personajes.fantasmas.*
import src.managers.fantasmaManager.*
import src.escenarios.pantallaInicial.*

class Level {
    var property puntuacion = 0

    method mapa()

    method iniciarNivel(){    
        // self.validarPantallaDeInicio()
        game.removeVisual(mainScreen)
        self.mapa().dibujar()
        game.onTick(20, "movimiento", {pacman.moverse()})
        game.onTick(10, "movimiento fantasmas", {fantasmaManager.mover()})
    }

    method siguienteNivel()

    method validarPantallaDeInicio() {
        const posicionMainScreen = mainScreen.menu()
        const objetosEnOrigen = game.getObjectsIn(posicionMainScreen)
        
        if (not objetosEnOrigen.contains(mainScreen)){
            self.error("No estoy en la pantalla principal")
        }
    }

    method puntuacion(){
        return puntuacion
    }

    method puntuacion(helado) {
        puntuacion += helado.puntos()
    }

    method removerHeladoComunDelNivel(){
        self.mapa().removerHeladoComun()
    }

}

