require_relative "takeaway.rb"

def run_takeaway 
	setup_data
	clear_screen
	place_order
	puts order_str
end

def setup_data
	@salad, @rice, @beef = Dish.new(:Salad, 2.5), Dish.new(:Rice, 4.4), Dish.new(:Beef, 10.1)
	@takeaway, @customer = Takeaway.new, Customer.new("Nadav", ENV['NADAV_PHONE'])
end

def clear_screen
	system "clear" or system "cls"
end

def place_order
	@takeaway.add(@customer)
	[@salad, @rice, @beef].each { |dish| @customer.add dish }
	@takeaway.place_order @customer
end

def order_str
	"TAKEAWAY\n\nTaken call from customer:\nCustomer name: #{@customer.name}\n
	Customer phone: Reserved\n\nTaken customer order of: 
	#{@customer.order.dish_list_to_str}\n\n Order cost: 
	£#{@customer.order_total_price}\n\nOrder delivery estimated by: 
	#{@customer.order_delivery_time}\n\n Placed customer order and sent confirmation 
	text to customer phone\n\n"
end

run_takeaway

