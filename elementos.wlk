class Elementos{

    method esHabitablePorHumanos(){

    }

    method ataqueDePlagas(){

    }

    method esBueno()
}

class Hogar inherits Elementos{
    var property mugre = 1
    var property confort = 0

    override method esBueno(){
        return mugre <= confort / 2
    }
}