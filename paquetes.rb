class Paquetes
	def initialize(a,b,c,d)
		@fecha_inicial = a
		@cantidad_dias = b
		@destino = c
		@cantidad_total_plazas = d
		@cantidad_total_plazas_disponibles = d
	end
	def display()

		display = [@fecha_inicial, @cantidad_dias, @destino,@cantidad_total_plazas,@cantidad_total_plazas_disponibles]
		return display
		
	end
end