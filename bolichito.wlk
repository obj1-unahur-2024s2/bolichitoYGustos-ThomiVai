import personas.*
import objetos.*

object bolichito{
    var objetoEnMostrador = pelota
    var objetoEnVidriera  = munieco

    method objetoEnVidriera(unObjeto){
        objetoEnVidriera = unObjeto
    }

    method objetoEnMostrador(unObjeto){
        objetoEnMostrador = unObjeto
    }

    method objetoEnVidriera(){
        return objetoEnVidriera
    }

    method objetoEnMostrador(){
        return objetoEnMostrador
    }

    method esBrillante(){
        return objetoEnMostrador.esBrillante() && objetoEnVidriera.esBrillante()
    }

    method esMonocromatico(){
        return objetoEnMostrador.color() == objetoEnVidriera.color()
    }

    method estaEquilibrado(){
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()

    }

    method esDeColor(unColor){
        return objetoEnMostrador.color() == unColor || objetoEnVidriera.color() == unColor
                
    }

    method puedeMejorar(){
        return not self.estaEquilibrado() || self.esMonocromatico()
    }

    method puedeOfrecerleAlgoA(unaPersona){
        return unaPersona.leGusta(objetoEnMostrador) || unaPersona.leGusta(objetoEnVidriera)
    }
}