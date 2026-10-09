class Elemento{

    method esBueno()
}

class Hogar inherits Elemento{
    var property mugre = 0
    var property confort = 0

    override method esBueno(){
        return mugre <= confort / 2
    }
}

class Huerta inherits Elemento{
    var property capacidadProductiva = 0 //kilos por mes
    var property nivelDeProduccion = 0

    override method esBueno(){
        return capacidadProductiva > nivelDeProduccion
    }
}