class Bicicleta {
	const property rodado =0
	const property largoEnCentimetros=0
	const property marca
	var property accesorios
	const property altura = rodado*2.5 +15
	const property velocidadDeCrucero = if(largoEnCentimetros>120) {rodado+6} else {rodado+2}
	var property carga = accesorios.sum({a => a.peso()})
	const property peso=0
	const property tieneLuz=false
	
	
	
	method cantidadDeAccesoriosLivianos(){
		
	}
	}
	
	object farolito {
		const property peso = 0.5
		const property carga = 0
		const property luminoso = true
	}
	
	object canasto {
		const property luminoso = false
		var property volumen = 0
		
		method peso(){
			return volumen/10
		} 
		method carga(){
			return volumen*2
		}
		
	}
	object morralDeBici {
		var property tieneOjoDeGato = false
		const property luminoso = tieneOjoDeGato
		var property largo = 0
		const property peso = 1.2
		const property carga = largo/3
			
	}
	
	
	
	