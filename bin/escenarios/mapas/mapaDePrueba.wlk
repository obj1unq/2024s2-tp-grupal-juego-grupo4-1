import mapas.Mapa.*
import obstaculos.ElementosMapa.*

object mapaPrueba inherits Mapa {

    const laberinto = [
        [m,m,m,m,m,m,_,m,m,m,m,m,m],
        [m,m,m,m,m,m,_,m,m,m,m,m,m],
        [m,g,c,b,_,t,_,_,_,_,_,pr,_],
        [m,m,p,h,_,_,_,m,_,ft,bh,_,_],
        [m,m,m,m,m,m,_,m,m,m,m,m,m]
    ].reverse()

    override method laberinto(){
        return laberinto
    }
}


