import managers.fantasmaManager.*
import managers.portalManager.*
import managers.heladoManager.*
import managers.levelManager.*


class EstadoGame{


    method pressEnter(){
        levelManager.iniciarNivel()
    }
    


}

object jugando inherits EstadoGame {
    override method pressEnter(){}
}

object pausa inherits EstadoGame{
    override method pressEnter(){}
}


object gameOver  inherits EstadoGame {

    method image(){
        return "main.jpg"
    }
        
    method position(){
        return game.at(3, 3)
    }

}

object inicio inherits EstadoGame {

    method image(){
        return "main.jpg"
    }

        
    method position(){
        return game.at(3, 3)
    }

}