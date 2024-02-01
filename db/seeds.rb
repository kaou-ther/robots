# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
burgerbot = Robot.new(name: "Burgerbot", category: "cooking", description: "Mouth watering burgers on sight! Be prepared to melt!", price: 263)
pastabot = Robot.new(name: "Pastabot", category: "cooking", description: "This robot will cook delicious pasta, as if you were sitting in a traditional restaurant in a small italian village. Pick the right wine and enjoy the ride!", price: 313)
pizzabot = Robot.new(name: "Pizzabot", category: "cooking", description: "Probaly the most efficient of his generation. Up to 5 pizzas prepared and cooked per minute", price: 154)
donutbot = Robot.new(name: "Donutbot", category: "cooking", description: "It will prepare for you doughnuts with a perfect geometrical form!!", price: 216)
eggbot = Robot.new(name: "Eggbot", category: "cooking", description: "Eggs benedict, omelette, sunny side up, you name it, it does it all.", price: 230)
vacbot = Robot.new(name: "Vacbot", category: "cleaning", description: "Nothing left on the floor after them.", price: 545)
swipebot = Robot.new(name: "Swipebot", category: "cleaning", description: "You want it to shine? Let Swipebot do the work!", price: 522)
dustbot = Robot.new(name: "Dustbot", category: "cleaning", description: "No more dust. Ever.", price: 620)
dishbot = Robot.new(name: "Dishbot", category: "cleaning", description: "So clean, so efficient. You will be surprised by their performance, and this without breaking anything.", price: 346)
laundrybot = Robot.new(name: "Laundrybot", category: "cleaning", description: "Always difficult to sort things out before washing them. This robot knows how to do it!", price: )
treebot = Robot.new(name: "Treebot", category: "gardening", description: "Trees cut in all possible geometrical forms with Treebot!", price: 825)
grassbot = Robot.new(name: "Grassbot", category: "gardening", description: "Mowing the lawn. Pff... A thing of the past! Let the specialist do it for you.", price: 754)
flowerbot = Robot.new(name: "Flowerbot", category: "gardening", description: "To take care of flowers you need a very delicate, highly specialized bot like this one.", price: 925)
plantprotectbot = Robot.new(name: "Plant Protect Bot", category: "gardening", description: "No quarter for bugs around here with Plant Protect Bot", price: 650)
wateringbot = Robot.new(name: "Wateringbot", category: "gardening", description: "This bot likes water and that is why it knows how to use it without waste.", price: 398)
dogbot = Robot.new(name: "Dogbot", category: "pet sitting", description: "Doggy likes Dogbot because it knows how to play!", price: 1205)
catbot = Robot.new(name: "Catbot", category: "pet sitting", description: "Catbot can be sneaky; exactly the right kind of companion for you cat", price: 1562)
parrotbot = Robot.new(name: "Parrotbot", category: "pet sitting", description: "Yes, of course, it knows how to talk, and above all talk back!", price: 1998)
bunnybot = Robot.new(name: "Bunnybot", category: "pet sitting", description: "For bunnies who like to be followed everywhere and always have a friend to play with", price: 1620)
snakebot = Robot.new(name: "Snakebot", category: "pet sitting", description: "Understanding snakes is not that easy, you should trust the specialists", price: 2996)

jack = User.new(first_name: "Jack", last_name: "Smith", address: "10, drive", email: "jack@crazyrobots.net", phone_number: "+1652148852", password: "password1")
john = User.new(first_name: "John", last_name: "O'neil", address: "6, crescent", email: "john@crazyrobots.net", phone_number: "+178521269845", password: "password2")
erica = User.new(first_name: "Erica", last_name: "Mint", address: "7, grove", email: "erica@crazyrobots.net", phone_number: "+1584255455", password: "password3")
martin = User.new(first_name: "Martin", last_name: "Wood", address: "96 street", email: "martin@crazyrobots.net", phone_number: "+163251215754", password: "password4")
jessica = User.new(first_name: "Jessica", last_name: "Carty", address: "15 avenue", email: "jessica@crazyrobots.net", phone_number: "+1156489423", password: "password5")
richard = User.new(first_name: "Richard", last_name: "Hunt", address: "35 road", email: "richard@crazyrobots.net", phone_number: "+13541589412", password: "password6")
paul = User.new(first_name: "Paul", last_name: "Burt", address: "26 villa", email: "paul@crazyrobots.net", phone_number: "+1358415655", password: "password7")
joanne = User.new(first_name: "Joanne", last_name: "Hirsch", address: "55 building", email: "joanne@crazyrobots.net", phone_number: "+1224845684165", password: "password8")
steve = User.new(first_name: "Steve", last_name: "Nolte", address: "36 residence", email: "steve@crazyrobots.net", phone_number: "+151515115654", password: "password9")
marta = User.new(first_name: "Marta", last_name: "Gray", address: "12 gardens", email: "marta@crazyrobots.net", phone_number: "+15156161354", password: "password10")
