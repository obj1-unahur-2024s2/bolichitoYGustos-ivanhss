import objetos.* 
//trae todos los objetos de la carpeta 'objetos.wlk'

//PERSONAS
object rosa{
    method leGusta(unObjeto){
        return unObjeto.peso() <= 2000 //el objeto tiene que pesar 2000gr o menos para que le guste a rosa
    } 
}

object estefania{
    method leGusta(unObjeto){
        return unObjeto.esColorFuerte()
    }
}

object luisa{
    method leGusta(unObjeto){
        return unObjeto.esDeMaterialQueBrilla()
    }
}

object juan {
  method leGusta(unObjeto) {
    return !unObjeto.esDeColorFuerte() //(not) o (!) es lo mismo
    || unObjeto.peso().between(1200, 1800) //between == entre
  }
}