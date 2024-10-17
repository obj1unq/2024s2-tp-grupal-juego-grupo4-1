import wollok.game.*
import personajes.pacman.*
class Estado {
    method haciaDondeIr(direccion){
        return direccion
    }

    method colisionarConFantasma(fantasma){
        pacman.asesinado() 
    }
}


object  superPacman  inherits Estado{
    override method colisionarConFantasma(fantasma){
        game.removeVisual(fantasma)
    }
}

object borracho inherits Estado{
    override method haciaDondeIr(direccion){
        return super(direccion).opuesto()
    }
}

object normal inherits Estado{}

object asesinado inherits Estado {}

object asustado inherits Estado {
    
}