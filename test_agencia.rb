#includes files
require_relative 'destino'
require_relative 'paquetes'
require_relative 'cliente'
require_relative 'agencia'
require_relative 'ventas'
require_relative 'ventas_online'

#requerimientos para el destino
nombre = 'Bariloche'
valor_lugar = 100
destino = Destino.new(nombre,valor_lugar) 
nombre_destino = destino.destino_pasaje()

#requerimentos para paquetes
fdesde = '23/05/2014'
cant_dias = 3
total_plazas = 25
paquete = Paquetes.new(fdesde,cant_dias,nombre_destino,total_plazas)
paquete_destino = paquete.display()

##instacia clientes
cliente1 = Cliente.new('maxi', 'lopez', 'DNI', 32543456)
cliente1_final = cliente1.display()
cliente2 = Cliente.new('javier', 'aguirre', 'DNI', 40212301)

#instacia agencia

agencia = Agencia.new()
incorpPaq = agencia.incorporarPaquete(paquete_destino)

if (incorpPaq == true)
	agencia = Agencia.new()
	
	paquete = agencia.incorporarVenta(paquete_destino, cliente1_final, 5, false)
	
	puts paquete	
	

else 
	puts "Se encuentra en el sistema"
end







