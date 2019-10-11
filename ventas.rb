class Ventas 
	def initialize(a,b,c,d)
		@fecha = a
		@referencia_paquete = b
		@cantidad_personas = c
		@referencia_cliente = d		
	end
	
	def importe_final()

		
		#cantidad de dias X importe del dia del paquete(verificar clase destino) X cantidad de cantidad_personas

		venta = @referencia_paquete[1] * @referencia_paquete[3] * @referencia_paquete[4]

		return venta

		
	end
	
end