
object gerente {
	method neto() { return 15000 } 
}

object cadete {
	method neto() { return 20000 } 
}

object vendedor{
	var muchasVentas = false

	method neto(){
		if (muchasVentas){
			return 16000*1.25
		}else{
			return 16000
		}
	}
	method activarAumentoPorMuchasVentas(){muchasVentas = true}
	method desactivarAumentoPorMuchasVentas(){muchasVentas = false}
	
}

object medioTiempo{
	var categoriaBase
	method categoriaBase(categoria){categoriaBase=categoria}
	method categoriaBase(){return categoriaBase}
	
	method neto(){return self.categoriaBase().neto()/2}
}









