class Plaga {
    var property poblacion //cantidad de bichos que la integran

    method nivelDeDaño()

    method puedeTransmitirEnfermedades()
    //Para que cualquier plaga transmita enfermedades, su población debe ser de al menos 10 bichos
}

class Cucaracha inherits Plaga {
    var property pesoPromedio

    override method nivelDeDaño() = poblacion / 2

    override method puedeTransmitirEnfermedades(){
        return pesoPromedio >= 10
    }
}

class Pulga inherits Plaga {

    override method nivelDeDaño(){

    }

    override method puedeTransmitirEnfermedades(){
        
    }
}

class Garrapata inherits Plaga {

    override method nivelDeDaño(){

    }

    override method puedeTransmitirEnfermedades(){
        
    }
}

class Mosquito inherits Plaga {

    override method nivelDeDaño(){

    }

    override method puedeTransmitirEnfermedades(){
        
    }
}