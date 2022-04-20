import categorias.*
import bonos.*

object pepe {
	var categoria = gerente
	var bonoPresentismo = bonoNulo
	var bonoResultado = bonoNulo
	var cantidadDeFaltas = 0
	
	method cantidadDeFaltas() { return cantidadDeFaltas }
	
	// faltan los métodos para poder cambiar la categoria, el bono por presentismo,
	// el bono por resultados y la cantidad de faltas de Pepe. 
	
	method sueldoNeto() { return categoria.neto() }
	method sueldo() {
		return self.sueldoNeto() + self.bonoResultado().monto(self) + self.bonoPresentismo().monto(self)
		
		/* notar que todos los bonos entienden el mensaje monto(empleado)
		 * en este caso ¿quién es el empleado?
		 */ 
	}
	
	
	method setCategoria(unaCategoria){ categoria = unaCategoria}
	method setBonoResultado(unBono){bonoResultado = unBono}
	method setBonoPresentismo(unBono){bonoPresentismo = unBono}
	method setCantidadDeFaltas(cantFaltas){cantidadDeFaltas = cantFaltas}
	
	method categoria(){return categoria}
	method bonoResultado(){return bonoResultado }
	method bonoPresentismo(){return bonoPresentismo }

	
}

object sofia{
	var categoria
	var bonoResultado

	
	method sueldoNeto() { return categoria.neto() *1.3}   //self.categoria().neto()
	method sueldo() {
		return self.sueldoNeto() + self.bonoResultado().monto(self) } 

	method setCategoria(unaCategoria){ categoria = unaCategoria}
	method setBonoResultado(unBono){bonoResultado = unBono}

	
	method categoria(){return categoria}
	method bonoResultado(){return bonoResultado }
}



object roque{
	var bonoResultado
	
	method setBonoResultado(unBono){bonoResultado = unBono}

	method bonoResultado(){return bonoResultado }

	
	method sueldoNeto(){return 28000}
	method sueldo(){
		return self.sueldoNeto() + self.bonoResultado().monto(self) + 9000
	}
}

object ernesto{
	var companiero
	var bonoPresentismo
	var cantidadFaltas = 0
	
	method companiero(unCompaniero){companiero=unCompaniero}
	method companiero(){return companiero}
	
	method setBonoPresentismo(unBono){bonoPresentismo = unBono}
	method bonoPresentismo(){return bonoPresentismo }
	
	method sueldoNeto(){
		return companiero.sueldoNeto()
	}
	method sueldo(){
		return self.sueldoNeto() + self.bonoPresentismo().monto(self)
	}
	method setCantidadDeFaltas(cantFaltas){cantidadFaltas = cantFaltas}
	method cantidadDeFaltas(){return cantidadFaltas} 
}














