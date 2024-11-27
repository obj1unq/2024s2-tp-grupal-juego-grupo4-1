import obstaculos.ElementosMapa.*
import mapas.Mapa.*

object mapa1 inherits Mapa{
const laberinto = [
    [m, m, m, m, m, m, m, m, m, m, m, m, m],
    [m, _, ft, h, _, _, _, _, _, h, _, pr, m],
    [m, _, m, _, _, m, _, m, _, m, m, _, m],
    [m, _, _, _, _, _, _, m, _, _, _, _, m],
    [m, _, _, _, _, _, p, _, _, _, c, _, m],
    [m, _, _, _, m, m, m, _, m, _, _, _, m],
    [m, pr, m, _, m, _, m, _, m, m, _, pr, m],
    [m, _, _, _, _, _, _, _, _, _, _, ft, m],
    [m, m, m, m, m, m, m, m, m, m, m, m, m]
].reverse()

    
    override method laberinto(){
        return laberinto
    }
}


    object mapa2 inherits Mapa{
    const laberinto =  [
    [m, m, m, m, m, m, m, m, m, m, m, m, m],
    [m, pr, ft, h, _, _, _, _, _, _, _, _, m],
    [m, _, m, _, m, _, _, _, m, _, m, _, m],
    [m, _, _, _, _, _, _, _, _, _, _, _, m],
    [m, _, _, _, _, _, p, _, _, _, c, _, m],
    [m, _, _, _, m, m, m, _, m, _, _, _, m],
    [m, pr, m, _, m, _, _, _, m, m, _, _, m],
    [m, _, _, _, _, _, ft, h, _, _, _, pr, m],
    [m, m, m, m, m, m, m, m, m, m, m, m, m]
].reverse()

    override method laberinto(){
        return laberinto
    }
    }

object mapa3 inherits Mapa{
    const laberinto = [
    [m, m, m, m, m, m, m, m, m, m, m, m, m],
    [m, pr, ft, h, _, _, _, _, _, _, _, _, m],
    [m, _, m, _, m, _, _, _, m, _, m, _, m],
    [m, _, _, _, _, _, _, _, _, _, _, h, m],
    [m, _, _, _, _, _, p, _, _, _, _, _, m],
    [m, _, _, _, m, m, m, _, m, _, _, _, m],
    [m, pr, m, _, m, _, m, _, m, m, _, _, m],
    [m, _, _, _, _, _, ft, h, _, _, _, pr, m],
    [m, m, m, m, m, m, m, m, m, m, m, m, m]
].reverse()

    override method laberinto(){
        return laberinto
    }
}



