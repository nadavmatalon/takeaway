require_relative "takeaway.rb"

def run_takeaway 

	salad =  Dish.new(:Salad, 2.5)
	rice = Dish.new(:Rice, 4.4)
	beef = Dish.new(:Beef, 10.1)
	veal = Dish.new(:Veal, 5.5)
	takeaway = Takeaway.new
	customer = Customer.new("Nadav", "+447503671785")

	system "clear" or system "cls"
	print "TAKEAWAY\n\n"
	takeaway.add(customer)
	print "Taken call from customer:\n"
	print "Customer name: #{customer.name}\n"
	print "Customer phone: #{customer.phone}\n\n"
	takeaway.take_dish_order(customer, salad)
	takeaway.take_dish_order(customer, rice)
	takeaway.take_dish_order(customer, beef)
	print "Taken customer order of: #{takeaway.get_dish_list_in_order_of(customer)}\n\n"
	print "Order cost: £#{takeaway.total_order_price(customer)}\n\n"
	print "Order delivery estimated by: £#{takeaway.delivery_time}\n\n"
	takeaway.place_order(customer)
	print "Placed customer order and sent confirmation text to customer phone\n\n"
end

run_takeaway

