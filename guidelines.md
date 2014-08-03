<h3>Task:</h3>

<h4>Part II</h4>

<ul>
	<li>Write a Takeaway program.</li>
	<li>Implement the following functionality:
		<ul>
			<li>list of dishes with prices</li>
			<li>placing the order by giving the list of dishes, their quantities and a number that should be the exact total. If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".</li>
			<li>The text sending functionality should be implemented using Twilio API. You'll need to register for it. It’s free.</li>
			<li>Use twilio-ruby gem to access the API</li>
			<li>Use a Gemfile to manage your gems</li>
			<li>Make sure that your Takeaway is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run</li>
			<li>However, if your Takeaway class is loaded into IRB and the order is placed, the text should actually be sent</li>
			<li>A free account on Twilio will only allow you to send texts to "verified" numbers. Use your mobile phone number, don't worry about the customer's mobile phone.</li>
		</ul>
	</li>
</ul>
