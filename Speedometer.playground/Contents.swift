import UIKit

enum Velocidades: Int {
    case apagado = 0
    case velocidadBaja = 20
    case velocidadMedia = 50
    case velocidadAlta = 120
    
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad: Velocidades
    
    init() {
        velocidad = Velocidades(velocidadInicial: .apagado)
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        
        let velocidadActual = velocidad
        
        switch velocidad {
        case Velocidades.apagado:
            velocidad = Velocidades.velocidadBaja
            break
        case Velocidades.velocidadBaja:
            velocidad = Velocidades.velocidadMedia
            break
        case Velocidades.velocidadMedia:
            velocidad = Velocidades.velocidadAlta
            break
        case Velocidades.velocidadAlta:
            velocidad = Velocidades.velocidadMedia
            break
        }
        
        return (velocidadActual.rawValue, "\(velocidadActual)")
        
    }
    
}

let carro = Auto()

for _ in 0...19 {
   print(carro.cambioDeVelocidad())
}
