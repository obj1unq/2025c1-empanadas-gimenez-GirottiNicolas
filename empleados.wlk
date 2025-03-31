
object gimenez {
    var fondoDeSueldo = 300000

    // Getter
    method fondoDeSueldo() {
        return fondoDeSueldo
  }
    method pagar(empleado) {
        fondoDeSueldo -= empleado.sueldo()
        empleado.cobrarSueldo()
  }
}


object galvan {
/*
    Galván, el empleado de siempre, que cobra un sueldo fijo. 
    El valor arranca en $ 15.000, y después puede cambiar mes a mes.
*/
    var sueldo = 15000
    var dinero = 0
    var deuda = 0


    method cobrarSueldo(){
        dinero += sueldo
        self.gastar(deuda)
    }

    method gastar(cantDinero){
       dinero = if (cantDinero > dinero) { deuda = cantDinero - dinero} 
                else { dinero -= cantDinero}
    }

    method deuda(){
        return deuda
    }

    // Getter
    method sueldo() {
        return sueldo
    }
    // Setter
    method sueldo(_sueldo) {
      sueldo = _sueldo
    }
}

object baigorria {
    var totalCobrado = 0
    var precioDeEmpanada = 15
    var cantidadDeEmpanadasVendidas = 0

    // Getter
    method cantidadDeEmpanadasVendidas(){
        return cantidadDeEmpanadasVendidas
    }
    // Getter
    method totalCobrado(){
        return totalCobrado
    }
    
    method sueldo() {
        return precioDeEmpanada * cantidadDeEmpanadasVendidas
    }

    method cobrarSueldo() {
      totalCobrado += self.sueldo()
      cantidadDeEmpanadasVendidas = 0
    }

    method registrarVentaDeEmpanadas(empanadasVendidas) {
      cantidadDeEmpanadasVendidas += empanadasVendidas
    }
    
}

