require "./lib/order.rb"

describe Order do

	let (:salad) {Dish.new(:Salad, 2.5)}
	let (:rice) {Dish.new(:Rice, 4.4)}
	let (:beef) {Dish.new(:Beef, 10.1)}
	let (:veal) {Dish.new(:Veal, 5.5)}
	let (:order) {Order.new}

	it "is initialized with an emptly list of dishes" do
		expect(order.dish_list).to eq []
	end

	it "can have a dish added to it" do
		order.add(beef)
		expect(order.dish_list).to eq [beef]
	end
	
	it "can have more than one dish added to it" do
		order.add(rice)
		order.add(veal)
		expect(order.dish_list).to eq [rice, veal]
	end

	it "can calculate the total price of the order" do
		expect(order.total_price).to eq 0.0
		order.add(beef)
		expect(order.total_price).to eq 10.1
		order.add(veal)
		expect(order.total_price).to eq 15.6
	end

	it "knwos how many dishes it contains of a given type" do
		expect(order.dish_quantity_of_type(:Veal)).to eq 0
		order.add(beef)
		expect(order.dish_quantity_of_type(:Veal)).to eq 0
		order.add(veal)
		expect(order.dish_quantity_of_type(:Veal)).to eq 1
		order.add(veal)
		expect(order.dish_quantity_of_type(:Veal)).to eq 2
	end

	it "knows the price for dish quantity of a given type" do
		expect(order.price_for_dish_quantity_of_type(:Salad)).to eq 0.0
		order.add(beef)
		expect(order.price_for_dish_quantity_of_type(:Salad)).to eq 0.0
		order.add(salad)
		expect(order.price_for_dish_quantity_of_type(:Salad)).to eq 2.5
		order.add(salad)
		expect(order.price_for_dish_quantity_of_type(:Salad)).to eq 5.0
	end

end



