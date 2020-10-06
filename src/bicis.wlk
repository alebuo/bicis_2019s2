import accesorios.*

class Bicicleta {
	const property rodado=0
	const property largoEnCentimetros=0
	const property marca
	var property accesorios =[]
	var property volumenCanasto=0
	var property largoMorral=0
	var property tieneOjoDeGato = false
		
	
		
	method peso(){ 
		const p1=rodado/2
		const p2=if(accesorios.contains(farolito)){ farolito.peso() }else{ 0}
		const p3=if(accesorios.contains(canasto)){canasto.peso(volumenCanasto)}else{0}
		const p4=if(accesorios.contains(morralDeBici)){morralDeBici.peso()}else{0}
		return p1+p2+p3+p4
	}
	
	method altura(){
		return (rodado *2.5+15)
	}
	method velocidadDeCrucero(){
		return if(largoEnCentimetros>120) {rodado+6} else {rodado+2}
		}
	
	method carga(){ 
		const a1=if(accesorios.contains(farolito)){ farolito.carga()}else{ 0}
		const b1=if(accesorios.contains(canasto)){canasto.carga(volumenCanasto)}else{0}
		const c1=if(accesorios.contains(morralDeBici)){morralDeBici.carga(largoMorral)}else{0}
		return a1+b1+c1
	}
			
	method cantidadDeAccesoriosLivianos(){
		const d1=if(accesorios.contains(farolito) && farolito.peso()<1){ 1 }else{ 0}
		const d2=if(accesorios.contains(canasto) && canasto.peso(volumenCanasto)<1){1}else{0}
		const d3=if(accesorios.contains(morralDeBici) && morralDeBici.peso()<1){1}else{0}
		return d1 + d2 + d3
		}
	method tieneLuz(){	
		const luz= accesorios.contains({a => a == farolito or a== canasto})
		return luz or morralDeBici.luminoso(tieneOjoDeGato)
		}	
	}
