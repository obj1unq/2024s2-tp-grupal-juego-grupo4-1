import managers.menuManager.*
import managers.levelManager.*


class EstadoGame{

    method pressEnter(){
        levelManager.iniciarNivel()
        menuManager.jugando()
    }
    
    method pressP()
}

object jugando inherits EstadoGame {

    override method pressEnter(){}

    override method pressP(){
        levelManager.removeOnTicks()
        game.addVisual(pausa)
        menuManager.pausa()
    }
}

object pausa inherits EstadoGame{
    method image(){
        return "blur.png"
    }

    method position(){
        return game.at(0,0)
    }

    override method pressEnter(){}    
    
    override method pressP(){
        levelManager.addOnTicks()
        menuManager.jugando()
        game.removeVisual(self)
    }
}


object gameOver  inherits EstadoGame {

    method image(){
        return "gameOver.jpg"
    }
        
    method position(){
        return game.at(3, 3)
    }
    override method pressP(){}
}

object inicio inherits EstadoGame {

    method image(){
        return "main.jpg"
    }

        
    method position(){
        return game.at(3, 3)
    }
    override method pressP(){}
}

object win inherits EstadoGame {
    method image(){
        return "creditos.jpg"
    }

    method position(){
        return game.at(3,3)
    }

    override method pressP(){}
}