# Seed data for Taxi, Rides, and Passengers
puts 'seeding 🚕...'

# Generate fake data for passengers
5.times do
    Passenger.create(name: Faker::Name.name)
  end
  
  # Generate fake data for taxis
  3.times do
    Taxi.create(number: Faker::Vehicle.license_plate)
  end
  
  # Generate fake data for rides and associate with taxis and passengers
  # Generate fake data for rides and associate with taxis and passengers
10.times do
    passenger = Passenger.find(rand(1..5))
    taxi = Taxi.find(rand(1..3))
    Ride.create(passenger_id: passenger.id, taxi_id: taxi.id)
  end
  
  
puts 'done seeding..'