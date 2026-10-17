class Plaga {
    var property poblacion //cantidad de bichos que la integran
    var property pesoPromedio 

    method nivelDeDaño()

    method puedeTransmitirEnfermedades(){
        return poblacion >= 10 //la condición común para todas las plagas
    }
    //Para que cualquier plaga transmita enfermedades, su población debe ser de al menos 10 bichos

    method ataqueAElemento(elemento){
        elemento.recibeAtaqueDePlaga(self)
        poblacion = poblacion + poblacion / 10
    }
}

class Cucaracha inherits Plaga {
    
    override method nivelDeDaño() = poblacion / 2

    override method ataqueAElemento(elemento){
        super(elemento)
        pesoPromedio += 2
    }

    override method puedeTransmitirEnfermedades(){
        return super() && pesoPromedio >= 10 
    }

}

class Pulga inherits Plaga {

    override method nivelDeDaño() = poblacion * 2

}

class Garrapata inherits Plaga {

    override method nivelDeDaño() = poblacion * 2

    override method ataqueAElemento(elemento){
        elemento.recibeAtaqueDePlaga(self)
        poblacion = poblacion + poblacion / 5
    }

}

class Mosquito inherits Plaga {

    override method nivelDeDaño() = poblacion

    override method puedeTransmitirEnfermedades(){
        return super() && poblacion % 3 == 0
    }
}