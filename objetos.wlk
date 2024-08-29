//COLORES
object rojo {
  method esFuerte() {return true}
}

object verde {
  method esFuerte() {return true}
}

object celeste {
  method esFuerte() {return false}
}

object pardo {
  method esFuerte() {return false}
}

//MATERIALES
object cobre {
  method esBrillante() {return true}
}

object vidrio {
  method esBrillante() {return true}
}

object lino {
  method esBrillante() {return false}
}

object madera {
  method esBrillante() {return false}
}

object cuero {
  method esBrillante() {return false}
}

//OBJETOS
object remera {
  method color() { //como el valor no puede cambiar en este caso lo hacemos como metodo, pero si podria lo hacemos como variable(var)
    return rojo} //retorna el objeto 'rojo'
  method material() {return lino} 
  method peso() {return 800}
  method esColorFuerte(){return self.color().esFuerte()} //self.color = rojo, esFuerte() = true
  method esDeMaterialQueBrilla(){return self.material().esBrillante()}
}

object pelota {
  method color() {return pardo}
  method material() {return cuero} 
  method peso() {return 1300} 
  method esColorFuerte(){return self.color().esFuerte()}
  method esDeMaterialQueBrilla(){return self.material().esBrillante()}
}

object biblioteca {
  method color() {return verde}
  method material() {return madera} 
  method peso() {return 8000} 
  method esColorFuerte(){return self.color().esFuerte()}
  method esDeMaterialQueBrilla(){return self.material().esBrillante()}
}

object munieco {
  var peso = 0 //como el peso puede variar lo ponemos como variable. Ponemos cualquier valor numerico si el ejercicio no lo pide
  
  method color() {return celeste}
  method material() {return vidrio}
  method peso(){return peso}//retorna la variable         //METODO DE CONSULTA (GETTER) es para saber el valor
  method peso(unPeso){                                   //METODO DE INDICACION (SETTER) es para cambiar el valor
    peso = unPeso}
  method esColorFuerte(){return self.color().esFuerte()}
  method esDeMaterialQueBrilla(){return self.material().esBrillante()}
}

object placa {
  var peso = 0
  var color = rojo //con cualquier cosa definido puede inicializarlo

  method material(){return cobre} 
  method peso(){return peso} //GET
  method peso(unPeso){peso = unPeso} //SET
  method color(){return color} //GET
  method color(unColor){color = unColor} //SET
  method esColorFuerte(){return self.color().esFuerte()}
  method esDeMaterialQueBrilla(){return self.material().esBrillante()}
}

object cajita{
  var objetoAdentro = placa
  
  method objetoAdentro(){return objetoAdentro}//GET
  method objetoAdentro(unObjeto){objetoAdentro = unObjeto}//SET
  method peso(){return 400 + objetoAdentro.peso()}
  method material(){return cobre} 
  method color(){return rojo} 
  method esColorFuerte(){return self.color().esFuerte()}
  method esDeMaterialQueBrilla(){return self.material().esBrillante()}
}