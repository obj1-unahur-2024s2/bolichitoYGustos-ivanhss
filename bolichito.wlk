import personas.*
import objetos.*

object bolichito {
  var objetoEnMostrador = remera
  var objetoEnVidriera = pelota
  //SET
  method objetoEnMostrador(unObjetoEnMostrador){objetoEnMostrador = unObjetoEnMostrador} 
  method objetoEnVidriera(unObjetoEnVidriera){objetoEnVidriera = unObjetoEnVidriera} 
  //GET
  method objetoEnMostrador(){return objetoEnMostrador}
  method objetoEnVidriera() {return objetoEnVidriera}

  method esBrillante(){
    return objetoEnMostrador.esBrillante() &&
    objetoEnVidriera.esBrillante()
  }
  method esMonocromatico(){
    return objetoEnMostrador.color() == objetoEnVidriera.color()
  }

  method estaEquilibrado(){
    return objetoEnMostrador.peso() > objetoEnVidriera.peso()
  }

  method tieneObjetoDeColor(unColor){
    return objetoEnMostrador.color() == unColor
    || objetoEnVidriera.color() == unColor
  }

  method puedeMejorar(){
    return !self.estaEquilibrado() || self.esMonocromatico()
  }

  method puedeOfrecerleAlgoA(unaPersona){
    return  unaPersona.leGusta(objetoEnMostrador) ||
    unaPersona.leGusta(objetoEnVidriera)
  }
}