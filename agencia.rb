class Agencia 
	def initialize()
		@coleccion_clientes = [['julian','bianqui','DNI',35355362],['lionel','messi','DNI', 22222222]]
		@coleccion_paquetes = [['14/09/2017',22,'Cordoba',16,16],['22/12/2017',22,'Buenos Aires',16,16]]

	end

	def incorporarPaquete(paquete)

		a = @coleccion_paquetes
		array = a
		coleccion = true

		i =0 
		while (i <= array.length) && coleccion
			if(array[i] == paquete)
				coleccion = false
				return coleccion
			else
				arreglo = array.push(paquete)
				return coleccion
			end
			
		end	
		
	end

	def incorporarVenta(paquete, cliente, dias, online)

		a = @coleccion_clientes
		array = a
		coleccion = true
		i = 0

		while (i <= array.length) && coleccion
			if(array[i] == cliente)
				return "el cliente esta"
			else
				if(online == true)
					ventas = Ventas.new(paquete[0],paquete,paquete[3],cliente[3] )
					ventas_final = ventas.importe_final
					return ventas_final
				else
					ventas = VentasOnline.new(paquete[0],paquete,paquete[3],cliente[3] )
					ventas_final = ventas.importe_final()
					return ventas_final
				end
				

			end
		end
		
	end
	
	
end



