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

	def add dish
		order.add dish
	end

	def order_total_price
		order.total_price
	end

	def order_dish_list
		order.dish_list
	end

	def order_delivery_time
		order.set_delivery_time
	end

	def create_delivery_message
		"Thank you, #{name}! Your order of [#{order.dish_list_to_str}] 
		at a cost of £#{order_total_price} was placed and will be delivered 
		before #{order_delivery_time}"
	end
end