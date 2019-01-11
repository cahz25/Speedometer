import UIKit

//Enumeracion de velocidades
enum Velocidades: Int {
    case apagado = 0
    case velocidadBaja = 20
    case velocidadMedia = 50
    case velocidadAlta = 120
    
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

//Clase auto
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

//inicializacion variable auto con clase Auto
let carro = Auto()

//Iteracion de la funcion cambioDeVelociad
for _ in 0...19 {
   print(carro.cambioDeVelocidad())
}
