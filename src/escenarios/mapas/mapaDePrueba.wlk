import mapas.Mapa.*
import mapas.ElementosMapa.*
object mapaPrueba inherits Mapa {
    override method laberinto(){
        return[
            [m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m],
            [m,g,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,fb,m],
            [m,m,p,h,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,m,m],
            [m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m]
        ].reverse()
    }
}


