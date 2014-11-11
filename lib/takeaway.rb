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

	def add customer
		customer_list << customer
	end

	def place_order customer
		delivery_message = customer.create_delivery_message
		send_confirmation_text_to customer
		true
	end

	def send_confirmation_text_to customer
		@client = Twilio::REST::Client.new ENV['TWILIO_SID'], ENV['TWILIO_TOKEN']
		@message = @client.account.messages.create({
				to: customer.phone, from: ENV['TWILIO_PHONE'], 
				body: customer.create_delivery_message
			})
		true
	end

end

