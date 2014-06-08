class Dish 

	def initialize(type = :generic, price = 0.0)
		@type = type
		@price = price
	end

	def type
		@type
	end

	def price
		@price
	end

	def set_type(new_type)
		if new_type.is_a? Symbol
			@type = new_type
			true
		else
			false
		end
	end

	def set_price(new_price)
		if (new_price.is_a? Float) && (new_price >= 0.0)
			@price = new_price
			true
		else
			false
		end
	end

end

