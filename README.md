<h2>TAKEAWAY</h2>

<h3>General Description</h3>

<p>The 'Takeaway' program simulates the order management system of a takeaway resturant.<p>

<p>The code was written in ruby using TDD methodology (testing done with Rspec).</p>

<p>The program uses the twilio-ruby gem for sending text messages.</p>


<p>For a quick demonstration of the program's execution, open irb/pry in terminal and type: require "./lib/run_takeaway.rb"<p>


<h3>Details about Structure and Functionality</h3>

<p>The program is based on four classes:
	<ul>
		<li><strong>Takeaway:</strong> each instance simulates a single resturant in which customers and orders are managed.</li>
		<li><strong>Customer:</strong> each instance stores customer details (name, phone number) and her/his specific order.</li>
		<li><strong>Order:</strong> each instance contains the dishes ordered by a specific customer.</li>
		<li><strong>Dish:</strong> each instance stores dish type and price.</li>
	</ul>
</p>

<p>The first step is to create a new Takeaway instance to simulate the restorant (takeaway = Takeaway.new)</p>

<p>Next, it is necessary to instanciate the various dishes on offer (e.g. salad = Dish.new(:Salad, 2.5) )</p>

<p>It is then time to add individual customers to the resturant's list of customers (John = Customer.new("John", "075012345"))</p>

<p>Each customer is initialized with an empty order to which the resturant can add various dishes, e.g. take_dish_order(John, salad)</p>

<p>During the ordering process the resturant can provide the total cost of the order at any point, e.g. takeaway.total_order_price(John)</p>

<p>The resturant can also give a list of all the ordered dishes by the customer at any point of the ordering process, e.g. takeaway.get_dish_list_in_order_of(John)</p>

<p>Finally, the resturant can place the order and send text confirmation to the customer's phone, eg takeaway.place_order(John)</p>
