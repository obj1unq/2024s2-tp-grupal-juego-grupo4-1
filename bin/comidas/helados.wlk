import wollok.game.*;
import src.escenarios.level1.*;
class HeladoComun {
    var property position = game.at(10,10);

    method image() {
        return "heladoComun.png"
    } 

    method puntos(){
        return 1000
    }

    method remove(){
        game.removeVisual(self)
    }

    method colisionarConPoocman(poocman){
        self.remove()
        poocman.level().puntuacion(self)
    }
}

class BebidaHelada{
    var property position = game.at(9,10);

    method image() {
        return "bebida.jpg"
    } 

    method puntos(){
        return 20000
    }


    method remove(){
        game.removeVisual(self)
    }

    method colisionarConPoocman(poocman){
        self.remove()
        poocman.level().puntuacion(self)
        poocman.borracho()
    }

}