##TAKEAWAY

###General Description

The 'Takeaway' program simulates the order management system of a takeaway resturant.

The code was written in ruby using TDD methodology (testing done with Rspec).

The program uses the twilio-ruby gem for sending text messages.


For a quick demonstration of the program's execution, open irb/pry in terminal and type: require "./lib/run_takeaway.rb"


###Details about Structure and Functionality

The program contains 4 classes:

Takeaway - the 'resturant', responsible for managing customers and order.

Customer - stores customer details (name, phone number) and her/his specific order.

Order - contains the dishes ordered by ther customer.

Dish - stores dish type and price.

The first step is to create a new Takeaway instance to simulate the restorant (takeaway = Takeaway.new)

Next, it is necessary to instanciate the various dishes on offer (e.g. salad = Dish.new(:Salad, 2.5) )

It is then time to add individual customers to the resturant's list of customers (John = Customer.new("John", "075012345"))

Each customer is initialized with an empty order, to which the resturant can add various dishes, e.g. take_dish_order(John, salad)

 During the ordering process the resturant can provide the total cost of the order at any point, e.g. takeaway.total_order_price(John)

 The resturant can also give a list of all the ordered dishes by the customer at any point of the ordering process, e.g. takeaway.get_dish_list_in_order_of(John)

 Finally, the restorant can place the order and send text confirmation to the customer's phone, eg takeaway.place_order(John)


Code & tests written by: Nadav Matalon @ Makers Academy (May 2014 Cohort)
