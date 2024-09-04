//Colores
object rojo{
  method esFuerte() {
    return true
    
  }
}

object verde{
  method esFuerte(){
    return true
}
}

object celeste{
  method esFuerte(){
    return false
}
}

object pardo{
  method esFuerte(){
    return false
}
}

//Materiales
object cobre{
  method esBrillante(){
    return true
  }
}

object vidrio{
  method esBrillante(){
    return true
  }
}

object lino{
  method esBrillante(){
    return false
  }
}

object madera{
  method esBrillante(){
    return false
  }
}

object cuero{
  method esBrillante(){
    return false
  }
}

//Objetos
object remera {
    method color(){
      return rojo
    }

    method material(){
      return lino
    }

    method peso(){
      return 800
    }

    method esDeColorFuerte(){
      return self.color().esFuerte()
    }
    
    method esBrillante(){
      return self.material().esBrillante()
    }
}

object pelota {
    method color(){
      return pardo
    }

    method material(){
      return cuero
    }

    method peso(){
      return 1300
    }

    method esDeColorFuerte(){
      return self.color().esFuerte()
    }

    method esBrillante(){
      return self.material().esBrillante()
    }
  
}

object biblioteca {
    method color(){
      return verde
    }

    method material(){
      return madera
    }

    method peso(){
      return 800
    }

    method esDeColorFuerte(){
      return self.color().esFuerte()
    }

    method esBrillante(){
      return self.material().esBrillante()
    }
  
}

object munieco {
    
    var peso = 0

    method color(){
      return celeste
    }

    method material(){
      return vidrio
    }
  
    method peso(unPeso) {
      peso = unPeso
      
    }

    method peso(){
      return peso
    }

    method esDeColorFuerte(){
      return self.color().esFuerte()
    }

    method esBrillante(){
      return self.material().esBrillante()
    }
}

object placa { 
    var peso = 0
    var color = rojo
    method color(unColor){//indicacion
      color = unColor
    }
    method color(){//consulta
      return color
    }
    method material(){
      return cobre
    }
    method peso(unPeso){//indicacion
      peso = unPeso      
    }
    method peso(){//consulta
      return peso
    }

    method esDeColorFuerte(){
      return self.color().esFuerte()
    }

    method esBrillante(){
      return self.material().esBrillante()
    }
}

object cajitaRoja {
    var objetoAdentro = munieco

    method color() {
      return rojo
    }

    method material(){
      return cobre
    }

    method objetoAdentro(){
      return objetoAdentro
    }
    method objetoAdentro(unObjeto){
      objetoAdentro = unObjeto
    }

    method pesoDeLaCajita(){
      return 400 + objetoAdentro.peso()
    }

    method esDeColorFuerte(){
      return self.color().esFuerte()
    }

    method esBrillante(){
      return self.material().esBrillante()
    }



  
}
