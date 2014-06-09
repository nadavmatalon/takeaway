require_relative "dish.rb"
require_relative "order.rb"
require_relative "customer.rb"
require 'twilio-ruby'

class Takeaway

	def initialize 
		@customer_list = []
	end

	def customer_list
		@customer_list
	end

	def add(customer)
		customer_list << customer
	end

	def take_dish_order(customer, dish)
		customer.order.add(dish)
	end

	def total_order_price(customer)
		customer.order.total_price
	end

	def customer
		customer_list[find(customer)]
	end

	def find(customer)
		customer_list.index(customer)		
	end

	def delivery_time
		time = Time.new
		delivery_hour = (time.hour + 1).to_s
		delivery_minute = (time.min).to_s
		delivery_time = "#{delivery_hour}:#{delivery_minute}"
	end


	def place_order(customer)
		dishes = get_dish_list_in_order_of(customer)
		order_cost = customer.order.total_price
		delivery_message = "Thank you, #{customer.name}! Your order of [#{dishes}] at a cost of £#{order_cost} was placed and will be delivered before #{delivery_time}"
		send_confirmation_text_to(customer, delivery_message)
		delivery_message
		true
	end

	def get_dish_list_in_order_of(customer)
		dishes = []
		customer.order.dish_list.each do |dish|
			dishes << dish.type.to_s
		end 
		"#{dishes.join(", ")}"
	end

	def send_confirmation_text_to(customer, delivery_message)
		@client = Twilio::REST::Client.new ENV['TWILIO_SID'], ENV['TWILIO_TOKEN']
		@message = @client.account.messages.create({:to => customer.phone, :from => "+441275595053", :body => delivery_message})
		true
	end

end

