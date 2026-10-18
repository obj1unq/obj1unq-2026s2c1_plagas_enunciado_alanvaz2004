import plagas.*
class Elemento{

    method esBueno()

    method recibeAtaqueDePlaga(plaga)
}

class Hogar inherits Elemento{
    var property mugre
    var property confort

    override method esBueno(){
        return mugre <= confort / 2
    }

    override method recibeAtaqueDePlaga(plaga){
        mugre += plaga.nivelDeDaño()
    }
}

class Huerta inherits Elemento{
    var property capacidadProductiva //kilos por mes
    var property nivelDeProduccion

    override method esBueno(){
        return capacidadProductiva > nivelDeProduccion
    }

    override method recibeAtaqueDePlaga(plaga){
        if(plaga.puedeTransmitirEnfermedades()){
            capacidadProductiva = capacidadProductiva - (plaga.nivelDeDaño() / 10) - 10 //10% de daño en bajar productividad y 10 unidades extra
        } else{
            capacidadProductiva = capacidadProductiva - plaga.nivelDeDaño() / 10 //10% de daño en bajar productividad
        }
    }
}

class Mascota inherits Elemento{
    var property salud

    override method esBueno(){
        return salud > 250
    }

    override method recibeAtaqueDePlaga(plaga){
        if(plaga.puedeTransmitirEnfermedades()){
            salud = salud - plaga.nivelDeDaño()
        }
    }
}

class Barrio{
    const elementos = []

    method agregarElemento(elemento){
        elementos.add(elemento)
    }

    method esCopado(){
        return  self.elementosBuenos() > (elementos.size() / 2) //la condición es que tenga más elementos buenos que no-buenos.
    }

    method elementosBuenos(){
        const buenos = elementos.filter{elemento => elemento.esBueno()}
        return buenos.size() 
    }
}