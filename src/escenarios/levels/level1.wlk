import levels.Level.*
import levels.level2.*

object level1 inherits Level{

    override method mapa(){
        return mapas.anyOne()
    }

    override method siguienteNivel(){
        return level2
    }

}
