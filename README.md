
#TakeAway

##Makers Academy | Week 5 | Challenge  | Part II


##Table of Contents

* [Intro](#intro)
* [General Description](#general-description)
* [Guidelines](#guidelines)
* [How to Run](#how-to-run)
* [Functionl Description](#functional-description)
* [Testing](#testing)
* [License](#license)


##Intro

This repo contians my answer to __Week 5 Friday Challange (Part II)__ as part 
of the course at [Makers Academy](http://www.makersacademy.com/).

It represented our first encounter with using an 
[API](http://en.wikipedia.org/wiki/Application_programming_interface).


##General Description

The __Takeaway__ app simulates an order management system of a takeaway resturant.

The code was written in [Ruby](https://www.ruby-lang.org/en/) 
using [TDD](http://en.wikipedia.org/wiki/Test-driven_development) 
methodology (tests written with [Rspec](http://rspec.info/)).

The app uses the [twilio-ruby](https://github.com/twilio/twilio-ruby) 
gem to send live order confirmation __text messages__.

__Important Note__: The [twilio-ruby](https://github.com/twilio/twilio-ruby) 
system will only send text messages to __verified phone numbers__. As a result, if you
want to run the app on your machine, you will need to clone the repo, [verify your 
phone number with Twilio] (http://www.twilio.com/help/faq/voice/how-do-i-add-a-verified-outgoing-caller-id-with-twilio) 
and modify the `environmental variables` in the `./lib/takeaway.rb` &amp; 
`./lib/run_takeaway.rb` files.


##Guidelines

Write a __Takeaway__ program and implement the following functionality:

* A list of dishes with prices
* The customer places the order by giving the list of dishes, their quantities and a 
  phone number that should be the exact total.
* After an order is placed, the app should send a text saying that the order was 
  placed successfully and that it will be delivered 1 hour from now, for example:
  "Thank you! Your order was placed and will be delivered before 18:52"
* The text sending functionality should be implemented using 
  [Twilio API](http://www.twilio.com/docs/api)
* Use twilio-ruby gem to access the API
* Use a Gemfile to manage your gems
* Test your `Takeaway` program by using mocks and/or stubs so as not 
  to send texts white testing
* However, if your Takeaway class is loaded into IRB and the order is placed, 
  the text should actually be sent


##How to Run

For a quick demo of the app's operation, clone the repo and in terminal run:

```bash
$> ch takeaway
$> irb
>> require './lib/run_takeaway.rb'
```

Alternatively, to work with the app manually, run:

```bash
$> ch takeaway
$> irb
>> require './lib/takeaway.rb'
```

And then follow the functional description in the next section.


##Functional Description

The app includes four classes:

* __Takeaway__ 

  Each instance of this class simulates a single resturant in which customers and 
  their orders are managed

* __Customer__ 

  Each instance stores a single customer details (name, phone number) and the 
  details of their order

* __Order__

  Each instance contains the dishes ordered by a specific customer

* __Dish__ 

  Each instance stores a dish type and its price


The first step is to create a new Takeaway instance to simulate the restorant: 

```pry
>> takeaway = Takeaway.new
```

Next, it is necessary to instanciate the various dishes on offer:

```pry
>> salad = Dish.new(:Salad, 2.5)
```

It is then time to add individual customers to the resturant's list of customers:

```pry
>> John = Customer.new("John", "075012345")
```

Each customer is initialized with an empty order to which the resturant can add 
various dishes:

```pry
>> takeaway.take_dish_order(John, salad)
```

During the ordering process the resturant can provide the total cost of the order 
at any point:

```pry
>> takeaway.total_order_price(John)
```

The resturant can also give a list of all the dishes currently ordered by the customer:

```pry
>> takeaway.get_dish_list_in_order_of(John)
```

Finally, the resturant can place the order and send __an order text confirmation__ to the 
customer's phone:

(Note that this line will __throw an error__ if you don't [verify your 
phone number with Twilio] (http://www.twilio.com/help/faq/voice/how-do-i-add-a-verified-outgoing-caller-id-with-twilio))

```pry
>> takeaway.place_order(John) 
```


##Testing

Tests were written with [Rspec](http://rspec.info/) (3.0.2).

To run the tests, clone the repo to a local folder and in terminal run: 

```bash
$> cd takeaway
$> rspec
```


##License

<p>Released under the <a href="http://www.opensource.org/licenses/MIT">MIT license</a>.</p>

