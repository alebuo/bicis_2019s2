object farolito {
		method peso(){return 0.5}
		method carga(){return 0}
		method luminoso(){return true}
		}
	
	object canasto {
		method luminoso(){return false}
		method peso(volumen){return volumen/10}
		method carga(volumen){return volumen*2}  
		
	}
	
	object morralDeBici {
		method luminoso(esLuminoso){return esLuminoso}
		method carga(largo){return largo/3}
		method peso(){return 1.2}	
	}
	