require "./lib/takeaway.rb"

describe Takeaway do

	let (:salad) {Dish.new(:Salad, 2.5)}
	let (:rice) {Dish.new(:Rice, 4.4)}
	let (:beef) {Dish.new(:Beef, 10.1)}
	let (:veal) {Dish.new(:Veal, 5.5)}
	let (:takeaway) {Takeaway.new}
	let (:customer) {Customer.new("Nadav", "+447505555555")}

	it "can add a customer to the customer list" do
		takeaway.add customer
		expect(takeaway.customer_list).to eq [customer]
	end

	it "can take a dish order from a customer" do
		takeaway.add customer
		customer.add salad
		expect(customer.order_dish_list).to eq [salad]
	end

	it "can calculate the total order price" do
		takeaway.add customer
		customer.add salad
		expect(customer.order_total_price).to eq 2.5
		customer.add rice
		expect(customer.order_total_price).to eq 6.9
	end

	it "can place an order" do
		allow(takeaway).to receive(:send_confirmation_text_to) {true}
		takeaway.add customer
		customer.add salad
		takeaway.add rice
		takeaway.add beef
		expect(takeaway.place_order(customer)).to eq true
	end
end

