// ---------------------- TOM
object tom {

var energia = 50

    method velocidadMaxima() = 5 + (energia/10)

    method comer(unRaton) {
        energia += 12 + unRaton.peso()
    }

    method correr(distancia) {
        energia -= 0.max(distancia / 2)
    }

    method energia() = energia

// Parte 2 Poder Cazar y comer

    method puedeCazar(distancia) = energia >= ( distancia / 2 )
    
    method cazar(unRaton , distancia) {
        if (self.puedeCazar(distancia))
            self.correr(distancia)
            self.comer(unRaton)
}

}
// ---------------------- JERRY
object jerry {
    var edad = 2

    method peso() = edad * 20

    method cumplirAnios() {
    edad += 1
}
}
// ---------------------- NIBBLES
object nibbles {
    method peso() = 35
}

// Inventar otro ratón

// ---------------------- PEREZ
object perez {
    var fondosDisponibles = 10000
    var cantidadDeDientesRecolectados = 0
  method peso() = 15 + ( cantidadDeDientesRecolectados * 0.5 )

    method canjearDiente() {
        cantidadDeDientesRecolectados += 1
        fondosDisponibles -= 1000
    }

}

