import mapas.Mapa.*
import obstaculos.ElementosMapa.*

object mapaPrueba inherits Mapa {
    const laberinto = [
            [m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m],
            [m,g,c,_,_,por,_,_,_,_,_,pr,_,_,_,_,_,_,_,_,_,_,_,fb,m],
            [m,m,p,h,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,por,_,m,m],
            [m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m]
        ].reverse()

    override method laberinto(){
        return laberinto
    }
}


