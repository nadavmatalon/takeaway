require_relative "dish.rb"

class Order

	def initialize (dish_list = [], total_price = 0.0)
		@dish_list = dish_list
		@total_price = 0.0
	end 

	def dish_list
		@dish_list
	end

	def add(dish)
		dish_list << dish
	end

	def total_price
		@total_price = dish_list.inject(0) {|total, dish| total + dish.price}
	end

	def dish_quantity_of_type(dish_type)
		dish_quantity = 0
		dish_list.each { |dish| dish_quantity += 1 if dish.type == dish_type}
		dish_quantity
	end

	def price_for_dish_quantity_of_type(dish_type)
		dish_quantity_price = 0.0
		selected_type = []
		selected_type = dish_list.select {|dish| dish.type == dish_type}
		if !selected_type.empty? 
			dish_quantity_price = (dish_quantity_of_type(dish_type) * selected_type[0].price)
		end
		dish_quantity_price
	end

end




