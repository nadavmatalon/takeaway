require_relative "order.rb"

class Customer

	def initialize (name = "", phone = "0")
		@name = name
		@phone = phone
		@order = Order.new
	end

	def name
		@name
	end

	def phone
		@phone
	end

	def order
		@order
	end

	def add_dish(dish)
		order.add(dish)
	end

end