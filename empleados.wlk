//Escribir aqui los objetos
object gimenez {
    var fondoDeSueldo = 300000

    // Getter
    method fondoDeSueldo() {
        return fondoDeSueldo
  }
    method pagar(empleado) {
        fondoDeSueldo -= empleado.sueldo()
  }

}


object galvan {
/*
    Galván, el empleado de siempre, que cobra un sueldo fijo. 
    El valor arranca en $ 15.000, y después puede cambiar mes a mes.
*/
    var sueldo = 15000

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
    var precioDeEmpanada = 15
    var cantidadDeEmpanadasVendidas = 0

    method sueldo() {
        return precioDeEmpanada * cantidadDeEmpanadasVendidas
    }

    // Getter
    method cantidadDeEmpanadasVendidas(){
        return cantidadDeEmpanadasVendidas
    }

    method registrarVentaDeEmpanadas(empanadasVendidas) {
      cantidadDeEmpanadasVendidas += empanadasVendidas
    }
    
}

