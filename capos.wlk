object rolando {
    const mochila = #{}
    var property capacidadMochila = 2
    const artefactosEncontrados = []

    method encontrar(item){
        artefactosEncontrados.add(item)
        if(self.hayEspacio()) mochila.add(item)
    }

    method hayEspacio(){
        return mochila.size() < capacidadMochila
    }

    method guardarEnCastillo(){
        castillo.guardar(mochila)
        mochila.clear()
    }
    
    method mochila(){
        return mochila
    }

    method almacenCastillo(){
        return castillo.almacen()
    }

    method posesiones(){
        return self.mochila() + self.almacenCastillo()
    }

    method posee(artefacto){
        return self.posesiones().contains(artefacto)
    }

}



object castillo{
    const almacen = []

    method guardar(coleccion){
        almacen.addAll(coleccion)
    }

    method almacen(){
        return almacen
    }
}



object espada{}

object collar {}

object libro{}

object armadura{}