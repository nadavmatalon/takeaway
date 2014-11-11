require_relative "dish.rb"

class Order

	def initialize (dish_list = [], total_price = 0.0, delivery_time = nil)
		@dish_list = dish_list
		@total_price = total_price
		@delivery_time = delivery_time
	end 

	def dish_list
		@dish_list
	end

	def add dish
		dish_list << dish
	end

	def total_price
		@total_price = dish_list.inject(0) { |total, dish| total + dish.price }
	end

	def dish_quantity_of_type dish_type
		dish_list.select { |dish| dish.type == dish_type }.count
	end

	def price_for_dish_quantity_of_type dish_type
		dish_quantity_price = 0.0
		selected_type = dish_list.select { |dish| dish.type == dish_type }
		if !selected_type.empty? 
			dish_quantity_price = (dish_quantity_of_type(dish_type) * selected_type[0].price)
		end
		dish_quantity_price
	end

	def set_delivery_time
		@delivery_time = "#{(Time.new.hour + 1).to_s}:#{(Time.new.min).to_s}"
	end

	def dish_list_to_str
		"#{dish_list.map { |dish| dish.type.to_s }.join(", ")}"
	end

end




