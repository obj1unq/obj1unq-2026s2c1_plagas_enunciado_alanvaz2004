class Plaga {
    var property poblacion //cantidad de bichos que la integran
    var property pesoPromedio //debido a esto tal vez podria hacer una subclase PlagaConPeso

    method nivelDeDaño()

    method puedeTransmitirEnfermedades(){
        return pesoPromedio >= 10 //la condición común para todas las plagas
    }
    //Para que cualquier plaga transmita enfermedades, su población debe ser de al menos 10 bichos
}

class Cucaracha inherits Plaga {
    
    override method nivelDeDaño() = poblacion / 2

}

class Pulga inherits Plaga {

    override method nivelDeDaño() = poblacion * 2

}

class Garrapata inherits Plaga {

    override method nivelDeDaño() = poblacion * 2

}

class Mosquito inherits Plaga {

    override method nivelDeDaño() = poblacion

    override method puedeTransmitirEnfermedades(){
        //super() && poblacion / 3
    }
}