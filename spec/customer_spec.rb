require "./lib/customer.rb"

describe Customer do

	let (:salad) {Dish.new(:Salad, 2.5)}
	let (:rice) {Dish.new(:Rice, 4.4)}
	let (:beef) {Dish.new(:Beef, 10.1)}
	let (:veal) {Dish.new(:Veal, 5.5)}
	let (:customer) {Customer.new("Nadav", "07503671785")}

	it "can be initialized with a name" do
		expect(customer.name).to eq "Nadav"
	end

	it "can be initialized with a phone number" do
		expect(customer.phone).to eq "07503671785"
	end

	it "is initialized with an empty order" do
		expect(customer.order_dish_list).to eq []
	end

	it "can add a dish to her/his order" do
		customer.add salad
		expect(customer.order_dish_list).to eq [salad]
	end

	it "can add more than one dish to her/his order" do
		customer.add salad
		customer.add veal
		expect(customer.order_dish_list).to eq [salad, veal]
	end

	it "can get the total price of her/his order" do
		expect(customer.order_total_price).to eq 0
		customer.add salad
		expect(customer.order_total_price).to eq 2.5
		customer.add veal
		expect(customer.order_total_price).to eq 8.0
	end
end

