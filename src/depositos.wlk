import bicis.*
import accesorios.*

class Depo {
	var property bicisEnDeposito=[]
	var property depoNocturno = false
	
	
	method agregaBiciNueva(unabici){
		if(!depoNocturno){
			bicisEnDeposito.add(unabici)
		}else if(depoNocturno and unabici.tieneLuz() ){
			bicisEnDeposito.add(unabici)
		}
	}
	
	method bicisRapidas(){
		return bicisEnDeposito.filter({a => a.velocidadDeCrucero() >25})
	}
	
	method marcasUnicas(){
		return bicisEnDeposito.filter({a=>a.marca()})
	}
		
	method  tieneBicicletaParaLlevar(kg){
		return bicisEnDeposito.any({a => a.carga() > kg})
		
	}
	method marcaBiciMasRapida(){
		return bicisEnDeposito.max({a=>a.velocidadDeCrucero()}).marca()
		
	}	

}
