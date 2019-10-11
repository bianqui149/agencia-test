class VentasOnline < Ventas
	#asi se reescribo el methodo padre
	
	alias venta_final importe_final
	
	def importe_final()

		porcentaje = 0.20
		precio = venta_final - (venta_final * porcentaje)

		return precio
		
	end
	
end