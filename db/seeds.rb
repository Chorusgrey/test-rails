puts "merde"
Car.destroy_all
Booking.destroy_all
User.destroy_all


User.create!(first_name: "John", last_name: "Doe", email: "johndoe@gmail.com", password: "123456")
Car.create!(model: "Ferrari", brand: "Tiguan", year: 1991, km:100000, color:"violet", description: "blabla", price_per_day: 100, photo: "https://sf1.autoplus.fr/wp-content/uploads/autoplus/2021/01/ferrari-connaissez-vous-tous-les-rouges-marque-750x410.jpeg", user_id: User.first.id)
Car.create!(model: "Porsche", brand: "Tiguan", year: 1991, km:100000, color:"violet", description: "blabla", price_per_day: 100, photo: "https://sf1.autoplus.fr/wp-content/uploads/autoplus/2021/01/ferrari-connaissez-vous-tous-les-rouges-marque-750x410.jpeg", user_id: User.first.id)
Car.create!(model: "Lamborghini", brand: "Tiguan", year: 1991, km:100000, color:"violet", description: "blabla", price_per_day: 100, photo: "https://sf1.autoplus.fr/wp-content/uploads/autoplus/2021/01/ferrari-connaissez-vous-tous-les-rouges-marque-750x410.jpeg", user_id: User.first.id)
puts "....."

