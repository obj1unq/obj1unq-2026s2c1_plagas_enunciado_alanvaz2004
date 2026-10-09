class Elemento{

    method esBueno()
}

class Hogar inherits Elemento{
    var property mugre
    var property confort

    override method esBueno(){
        return mugre <= confort / 2
    }
}

class Huerta inherits Elemento{
    var property capacidadProductiva //kilos por mes
    var property nivelDeProduccion

    override method esBueno(){
        return capacidadProductiva > nivelDeProduccion
    }
}

class Mascota inherits Elemento{
    var property salud

    override method esBueno(){
        return salud > 250
    }
}

class Barrio{
    const elementos = []

    method agregarElemento(elemento){
        elementos.add(elemento)
    }

    method esCopado(){
        return //la condición es que tenga más elementos buenos que no-buenos.
    }
}