import personajes.pacman.*
import mapas.ElementosMapa.*

class Mapa{

   
    method laberinto()    

    method dibujar() {
        game.height(self.laberinto().size())
        game.width(self.laberinto().get(0).size())

        (0..game.width() - 1).forEach({ x =>
            (0..game.height() -1).forEach({y =>
                self.laberinto().get(y).get(x).dibujarEn(game.at(x,y))
            })
        })
        game.addVisual(pacman)
    }

    method removerHelados() {// si remove all funcionara, seria laberinto.foreach()
        self.laberinto().clear()
        self.laberinto().addAll(self.laberintoSinHelados())
    }

    method laberintoSinHelados() {
        return self.laberinto().map({ row => row.filter({o => o != h}) })
    }

    method hayHelado(){
        return self.laberinto().any({row => row.contains(h)})
    }


}