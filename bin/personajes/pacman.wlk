import wollok.game.*
import src.escenarios.level1.level1
import src.managers.fantasmaManager.*
import src.managers.posicionManager.*

object pacman {
    var haciaDondeIr = izquierda
    var property  level = level1
    var property estado = normal

    var property position = game.at(10,7)

    method image() {
        return "pacMan.png"
    }

    method cambioDireccion(direccion) {
        if(self.estaBorracho()){
          haciaDondeIr = direccion.opuesto()
        } else {
          haciaDondeIr = direccion
        }
    }

    method estaBorracho(){
      return estado == borracho
    }

  method moverse() {
      position = game.at(haciaDondeIr.x(self.position()), haciaDondeIr.y(self.position()))
      self.colision()
  }

  method colision() {
      game.colliders(self).forEach({obj => obj.colisionarConPoocman(self)})
  }

  method puntuacion(){
    game.say(self, "Puntuacion: " + level.puntuacion())
  }

  method asesinado() {
      game.say(self, "La quede :P")
      game.schedule(10, {game.stop()})
  }

  method sigueVivo(){
    return not fantasmaManager.hayFantasma(position)
  }

  method borracho(){
    estado = borracho
  }

}

object borracho {
  
}

object normal{

}