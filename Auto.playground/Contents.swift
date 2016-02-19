//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    
    case  Apagado = 0, VelocidadBaja  = 20, VelocidadMedia =  50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
    
}

class Auto {
    var velocidadActual : Velocidades
    
    
    init(){
        velocidadActual  =  Velocidades(velocidadInicial: Velocidades.Apagado )
        
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        let velocidad : Int = self.velocidadActual.rawValue
        var mensajeVelocidad : String
        
        switch self.velocidadActual {
        case .Apagado:
            mensajeVelocidad = "Apagado"
            velocidadActual = Velocidades.VelocidadBaja
        case .VelocidadBaja:
            mensajeVelocidad = "Velocidad Baja"
            velocidadActual = Velocidades.VelocidadMedia
        case .VelocidadMedia:
            mensajeVelocidad = "Velocidad Media"
            velocidadActual = Velocidades.VelocidadAlta
        default:
            mensajeVelocidad = "Velocidad Alta"
            velocidadActual = Velocidades(velocidadInicial: Velocidades.VelocidadMedia )
        }
        
        return (velocidad, mensajeVelocidad)
    }
    
}


var auto = Auto()

for indice in 1..<21{
    var tuplaVelocidadMensaje  = auto.cambioDeVelocidad()
    print("\(indice). \(tuplaVelocidadMensaje.actual), \(tuplaVelocidadMensaje.velocidadEnCadena)")
}




