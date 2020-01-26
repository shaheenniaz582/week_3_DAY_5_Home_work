require_relative('models/customer.rb')
require_relative('models/film.rb')
require_relative('models/ticket.rb')

require('pry')

Ticket.delete_all()
Customer.delete_all()
Film.delete_all()

customer1 = Customer.new({'name' => 'ABC', 'funds' => 30})
customer1.save()

customer2 = Customer.new({'name' => 'Abdullah', 'funds' => 10})
customer2.save()

customer3 = Customer.new({'name' => 'Ibrahim', 'funds' => 20})
customer3.save()

# customer1.update({'name' => 'Masood', 'funds' => 100})

film1 = Film.new({'title' => 'Spider-Man', 'price'=> 5})
film1.save()

film2 = Film.new({'title' => 'Incredibles 2', 'price'=> 7})
film2.save()

film3 = Film.new({'title' => 'Toy Story 4', 'price'=> 3})
film3.save()

ticket1 = Ticket.new({'customer_id' => customer1.id,'film_id' => film3.id })
ticket2 = Ticket.new({'customer_id' => customer2.id,'film_id' => film1.id })
ticket3 = Ticket.new({'customer_id' => customer3.id,'film_id' =>film3.id })

ticket1.save()
ticket2.save()
ticket3.save()


binding.pry()
nil
