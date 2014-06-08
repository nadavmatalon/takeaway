require "./lib/takeaway.rb"

describe Takeaway do

	let (:salad) {Dish.new(:Salad, 2.5)}
	let (:rice) {Dish.new(:Rice, 4.4)}
	let (:beef) {Dish.new(:Beef, 10.1)}
	let (:veal) {Dish.new(:Veal, 5.5)}
	let (:takeaway) {Takeaway.new}
	let (:customer) {Customer.new("Nadav", "+447503671785")}

	it "can add a customer to the customer list" do
		takeaway.add(customer)
		expect(takeaway.customer_list).to eq [customer]
	end

	it "can take a dish order from a customer" do
		takeaway.add(customer)
		takeaway.take_dish_order(customer, salad)
		expect(customer.order.dish_list).to eq [salad]
	end

	it "can calculate the total order price" do
		takeaway.add(customer)
		takeaway.take_dish_order(customer, salad)
		expect(takeaway.total_order_price(customer)).to eq 2.5
		takeaway.take_dish_order(customer, rice)
		expect(takeaway.total_order_price(customer)).to eq 6.9
	end

	it "can place an order" do
		allow(takeaway).to receive(:send_confirmation_text_to) {true}
		takeaway.add(customer)
		takeaway.take_dish_order(customer, salad)
		takeaway.take_dish_order(customer, rice)
		takeaway.take_dish_order(customer, beef)
		expect(takeaway.place_order(customer)).to eq true
	end
end






