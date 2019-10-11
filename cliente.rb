class Cliente 
	def initialize(a,b,c,d)
		@nombre = a
		@apellido = b
		@tipo_documento = c
		@numero_documento = d
	end
	def display()
		array = [@nombre,@apellido,@tipo_documento,@numero_documento]
		return array
	end
end


