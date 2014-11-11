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
		@type = new_type
	end

	def set_price(new_price)
		@price = new_price
	end
end

