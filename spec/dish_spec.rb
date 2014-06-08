require "./lib/dish.rb"

describe Dish do

	it "is initialized with default type (generic) unless type is given" do
		dish = Dish.new
		expect(dish.type).to eq :generic
	end
	
	it "is initialized with default price (0) unless price is given" do
		dish = Dish.new
		expect(dish.price).to eq 0
	end

	it "can be initialized with a specific type" do
		dish = Dish.new(:Beef)
		expect(dish.type).to eq :Beef
	end

	it "can be initialized with a specific price" do
		dish = Dish.new(:Beef, 10.10)
		expect(dish.price).to eq 10.10
	end

	it "can show it's type" do
		dish = Dish.new(:Beef, 10.10)
		expect(dish.type).to eq :Beef
	end

	it "can show it's price" do
		dish = Dish.new(:Beef, 10.10)
		expect(dish.price).to eq 10.10
	end

	it "can have it's type set to a new type" do
		dish = Dish.new
		dish.set_type(:Pizza)
		expect(dish.type).to eq :Pizza
	end

	it "can have it's price set to a new price" do
		dish = Dish.new
		dish.set_price(5.5)
		expect(dish.price).to eq 5.5
	end

end



