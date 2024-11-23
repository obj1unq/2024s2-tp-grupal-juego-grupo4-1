import estados.estadosGame.*
import portalManager.*
import heladoManager.*
import fantasmaManager.*
import levelManager.*
// QUE VERIFIQUE EL CAMBIO DE ESTADO
object menuManager{
    var estadoGame = inicio
    
    method pressEnter(){
        estadoGame.pressEnter()
        self.jugando()
    }

    method pressBackSpace(){
        levelManager.clear()
        game.addVisual(pantallaSalida)
        game.stop()
    }

    method estadoGame(){
        return estadoGame
    }

    method gameOver(){
        estadoGame = gameOver
    }

    method perdio(){
        self.gameOver()
        levelManager.clear()
        levelManager.level1()
        game.addVisual(estadoGame)
    }

    method inicio(){
        estadoGame = inicio
    }

    method jugando(){
        estadoGame = jugando
    }

    method win(){
        estadoGame = win
    }

    method gano(){
        self.win()
        levelManager.clear()
        levelManager.level1()
        game.addVisual(estadoGame)
    }

}

object pantallaSalida{
    method image(){
        return "creditos.jpg"
    }

    method position(){
        return game.at(3,3)
    }
}