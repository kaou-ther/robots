# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "faker"
User.destroy_all
Robot.destroy_all
Order.destroy_all

jack = User.create(first_name: "Jack", last_name: "Smith", address: "10, drive", email: "jack@crazyrobots.net", phone_number: "+1652148852", password: "password1")
john = User.create(first_name: "John", last_name: "O'neil", address: "6, crescent", email: "john@crazyrobots.net", phone_number: "+178521269845", password: "password2")
erica = User.create(first_name: "Erica", last_name: "Mint", address: "7, grove", email: "erica@crazyrobots.net", phone_number: "+1584255455", password: "password3")
martin = User.create(first_name: "Martin", last_name: "Wood", address: "96 street", email: "martin@crazyrobots.net", phone_number: "+163251215754", password: "password4")
jessica = User.create(first_name: "Jessica", last_name: "Carty", address: "15 avenue", email: "jessica@crazyrobots.net", phone_number: "+1156489423", password: "password5")
richard = User.create(first_name: "Richard", last_name: "Hunt", address: "35 road", email: "richard@crazyrobots.net", phone_number: "+13541589412", password: "password6")
paul = User.create(first_name: "Paul", last_name: "Burt", address: "26 villa", email: "paul@crazyrobots.net", phone_number: "+1358415655", password: "password7")
joanne = User.create(first_name: "Joanne", last_name: "Hirsch", address: "55 building", email: "joanne@crazyrobots.net", phone_number: "+1224845684165", password: "password8")
steve = User.create(first_name: "Steve", last_name: "Nolte", address: "36 residence", email: "steve@crazyrobots.net", phone_number: "+151515115654", password: "password9")
marta = User.create(first_name: "Marta", last_name: "Gray", address: "12 gardens", email: "marta@crazyrobots.net", phone_number: "+15156161354", password: "password10")

burgerbot = Robot.new(address: "16 Villa Gaudelet, 75011 Paris", name: "Burgerbot", category: "cooking", description: "Mouth watering burgers on sight! Be prepared to melt!", price: 263)
burgerbot.user = richard
burgerbot_photo = URI.open("https://imageio.forbes.com/blogs-images/christinatroitino/files/2018/06/Creator-Device-Pickle-Tomato-Onion_2-1200x800.jpg?height=474&width=711&fit=bounds")
burgerbot.photo.attach(io: burgerbot_photo, filename: "burgerbot.png", content_type: "image/png")
pastabot = Robot.new(address: "28 Rue du Faubourg Saint-Antoine, 75011 Paris", name: "Pastabot", category: "cooking", description: "This robot will cook delicious pasta, as if you were sitting in a traditional restaurant in a small italian village. Pick the right wine and enjoy the ride!", price: 313)
pastabot.user = richard
pastabot_photo = URI.open("https://www.philips.com/c-dam/b2c/category-pages/Household/kitchen-appliances/pasta-maker/EU7/philips-pastmaker-EU7-thumbnail.jpg")
pastabot.photo.attach(io: pastabot_photo, filename: "pastabot.png", content_type: "image/png")
pizzabot = Robot.new(address: "28 Rue du Marché, 44000 Nantes", name: "Pizzabot", category: "cooking", description: "Probaly the most efficient of his generation. Up to 5 pizzas prepared and cooked per minute", price: 154)
pizzabot.user = richard
pizzabot_photo = URI.open("https://www.zdnet.com/a/img/resize/9d1b9683af5e8dd44c7bbea0973583a7c3a6df8c/2018/03/15/2d583c07-0951-44ac-9925-5d3a40f93dcf/5aa966e760b22c85d72647c7-1280x7201mar152018140904poster.jpg?auto=webp&fit=crop&height=675&width=1200")
pizzabot.photo.attach(io: pizzabot_photo, filename: "pizzabot.png", content_type: "image/png")
donutbot = Robot.new(address: "7 Rue de la République, 13001 Marseille", name: "Donutbot", category: "cooking", description: "It will prepare for you doughnuts with a perfect geometrical form!!", price: 216)
donutbot.user = richard
donutbot_photo = URI.open("https://m.media-amazon.com/images/I/71DkTSGE59S.jpg")
donutbot.photo.attach(io: donutbot_photo, filename: "donutbot.png", content_type: "image/png")
eggbot = Robot.new(address: "42 Rue du Faubourg Saint-Antoine, 31000 Toulouse", name: "Eggbot", category: "cooking", description: "Eggs benedict, omelette, sunny side up, you name it, it does it all.", price: 230)
eggbot.user = richard
eggbot_photo = URI.open("https://cdn.openart.ai/stable_diffusion/c251d0c365c7135c6f28d3240a55ac6b5e02bf8b_2000x2000.webp")
eggbot.photo.attach(io: eggbot_photo, filename: "eggbot.png", content_type: "image/png")
vacbot = Robot.new(address: "9 Rue Nationale, 59000 Lille", name: "Vacbot", category: "cleaning", description: "Nothing left on the floor after them.", price: 545)
vacbot.user = paul
vacbot_photo = URI.open("https://www.livemint.com/lm-img/img/2024/01/24/600x338/best_robotic_vacuum_cleaner_1706094429597_1706094429964.jpg")
vacbot.photo.attach(io: vacbot_photo, filename: "vacbot.png", content_type: "image/png")
swipebot = Robot.new(address: "14 Avenue de la Libération, 33000 Bordeaux", name: "Swipebot", category: "cleaning", description: "You want it to shine? Let Swipebot do the work!", price: 522)
swipebot.user = paul
swipebot_photo = URI.open("https://i.ebayimg.com/images/g/rvIAAOSwdXdlE8EI/s-l1200.jpg")
swipebot.photo.attach(io: swipebot_photo, filename: "swipebot.png", content_type: "image/png")
dustbot = Robot.new(address: "33 Rue de la République, 67000 Strasbourg", name: "Dustbot", category: "cleaning", description: "No more dust. Ever.", price: 620)
dustbot.user = paul
dustbot_photo = URI.open("https://img.kwcdn.com/product/Fancyalgo/VirtualModelMatting/a6c6c76744fe81e5f3e9515254066dd8.jpg?imageMogr2/auto-orient%7CimageView2/2/w/800/q/70/format/webp")
dustbot.photo.attach(io: dustbot_photo, filename: "dustbot.png", content_type: "image/png")
dishbot = Robot.new(address: "55 Rue du Faubourg Saint-Honoré, 69000 Lyon", name: "Dishbot", category: "cleaning", description: "So clean, so efficient. You will be surprised by their performance, and this without breaking anything.", price: 346)
dishbot.user = paul
dishbot_photo = URI.open("https://www.trustedreviews.com/wp-content/uploads/sites/54/2022/05/Screenshot-2022-05-25-at-2.11.25-PM.png")
dishbot.photo.attach(io: dishbot_photo, filename: "dishbot.png", content_type: "image/png")
laundrybot = Robot.new(address: "20 Rue de la Victoire, 54000 Nancy", name: "Laundrybot", category: "cleaning", description: "Always difficult to sort things out before washing them. This robot knows how to do it!", price: 246)
laundrybot.user = paul
laundrybot_photo = URI.open("https://media.istockphoto.com/id/947128288/photo/autonomous-service-robot-is-ironing-some-clothes-aal-cyborg-is-supporting-by-doing-some-work.jpg?s=612x612&w=0&k=20&c=9y2EHwR0RMBrxxRAaX3vGbrt06IHb7cu-mY5lPuEzPM=")
laundrybot.photo.attach(io: laundrybot_photo, filename: "laundrybot.png", content_type: "image/png")
treebot = Robot.new(address: "6 Place de la Comédie, 34000 Montpellier", name: "Treebot", category: "gardening", description: "Trees cut in all possible geometrical forms with Treebot!", price: 825)
treebot.user = joanne
treebot_photo = URI.open("https://spectrum.ieee.org/media-library/image.jpg?id=25574755&width=980")
treebot.photo.attach(io: treebot_photo, filename: "treebot.png", content_type: "image/png")
grassbot = Robot.new(address: "19 Rue des Dominicains, 21000 Dijon", name: "Grassbot", category: "gardening", description: "Mowing the lawn. Pff... A thing of the past! Let the specialist do it for you.", price: 754)
grassbot.user = joanne
grassbot_photo = URI.open("https://earimediaprodweb.azurewebsites.net/Api/v1/Multimedia/908171f9-d298-471a-baa6-b8d8a5a66e6f/Rendition/low-res/Content/Public")
grassbot.photo.attach(io: grassbot_photo, filename: "grassbot.png", content_type: "image/png")
flowerbot = Robot.new(address: "71 Rue du Port, 35000 Rennes", name: "Flowerbot", category: "gardening", description: "To take care of flowers you need a very delicate, highly specialized bot like this one.", price: 925)
flowerbot.user = joanne
flowerbot_photo = URI.open("https://images.squarespace-cdn.com/content/v1/5494b8f5e4b0d7d16a2b75d4/1561996082043-APSI6GPJ7N43BYAXCN5B/florabot-1.png")
flowerbot.photo.attach(io: flowerbot_photo, filename: "flowerbot.png", content_type: "image/png")
plantprotectbot = Robot.new(address: "8 Avenue des Gobelins, 45000 Orléans", name: "Plant Protect Bot", category: "gardening", description: "No quarter for bugs around here with Plant Protect Bot", price: 650)
plantprotectbot.user = joanne
plantprotectbot_photo = URI.open("https://www.aafarmer.co.uk/wp-content/uploads/2020/11/Small-Robot-Company-trials-Tom-1.5-credit-Small-Robot-Company-1.jpg")
plantprotectbot.photo.attach(io: plantprotectbot_photo, filename: "plantprotectbot.png", content_type: "image/png")
wateringbot = Robot.new(address: "4 Rue de la Bourse, 13002 Marseille", name: "Wateringbot", category: "gardening", description: "This bot likes water and that is why it knows how to use it without waste.", price: 398)
wateringbot.user = joanne
wateringbot_photo = URI.open("https://www.digitaltrends.com/wp-content/uploads/2016/04/growver-2.jpg?resize=2048%2C1152&p=1")
wateringbot.photo.attach(io: wateringbot_photo, filename: "wateringbot.png", content_type: "image/png")
dogbot = Robot.new(address: "18 Rue du Palais, 25000 Besançon", name: "Dogbot", category: "pet sitting", description: "Doggy likes Dogbot because it knows how to play!", price: 1205)
dogbot.user = steve
dogbot_photo = URI.open("https://erepublic.brightspotcdn.com/dims4/default/fdcce84/2147483647/strip/true/crop/1000x521+0+72/resize/840x438!/quality/90/?url=http%3A%2F%2Ferepublic-brightspot.s3.us-west-2.amazonaws.com%2F37%2F94%2F85761bbc4a8e928c7748a81f7fd6%2Fspot.png")
dogbot.photo.attach(io: dogbot_photo, filename: "dogbot.png", content_type: "image/png")
catbot = Robot.new(address: "12 Rue Gambetta, 86000 Poitiers", name: "Catbot", category: "pet sitting", description: "Catbot can be sneaky; exactly the right kind of companion for you cat", price: 1562)
catbot.user = steve
catbot_photo = URI.open("https://i.etsystatic.com/41305750/r/il/8e3c3d/4680264844/il_fullxfull.4680264844_9vsd.jpg")
catbot.photo.attach(io: catbot_photo, filename: "catbot.png", content_type: "image/png")
parrotbot = Robot.new(address: "3 Place du Capitole, 31000 Toulouse", name: "Parrotbot", category: "pet sitting", description: "Yes, of course, it knows how to talk, and above all talk back!", price: 1998)
parrotbot.user = steve
parrotbot_photo = URI.open("https://img.freepik.com/premium-photo/colorful-joyful-parrot-robot-robotic-bird-isolated-white-background_220770-3152.jpg")
parrotbot.photo.attach(io: parrotbot_photo, filename: "parrotbot.png", content_type: "image/png")
bunnybot = Robot.new(address: "22 Avenue de la République, 59000 Lille", name: "Bunnybot", category: "pet sitting", description: "For bunnies who like to be followed everywhere and always have a friend to play with", price: 1620)
bunnybot.user = steve
bunnybot_photo = URI.open("https://t3.ftcdn.net/jpg/05/52/97/10/360_F_552971051_9jz7Al2rabKzWS44k8ESxiz3O5O9dqQ5.jpg")
bunnybot.photo.attach(io: bunnybot_photo, filename: "bunnybot.png", content_type: "image/png")
snakebot = Robot.new(address: "13 Quai des Chartrons, 33000 Bordeaux", name: "Snakebot", category: "pet sitting", description: "Understanding snakes is not that easy, you should trust the specialists", price: 2996)
snakebot.user = marta
snakebot_photo = URI.open("https://technoupdate2017.files.wordpress.com/2017/03/aaeaaqaaaaaaaakaaaaajdlkmtdjywfjltezztutngvjys1hythmltywnweyngy4zmfhzq.jpg")
snakebot.photo.attach(io: snakebot_photo, filename: "snakebot.png", content_type: "image/png")

[burgerbot,
  pastabot,
  pizzabot,
  donutbot,
  eggbot,
  vacbot,
  swipebot,
  dustbot,
  dishbot,
  laundrybot,
  treebot,
  grassbot,
  flowerbot,
  plantprotectbot,
  wateringbot,
  dogbot,
  catbot,
  parrotbot,
  bunnybot,
  snakebot
].each(&:save)

order_1 = Order.new(start_date: '2044-09-03' , end_date: '2044-09-03', status: "pending")
order_1.robot = burgerbot
order_1.user = jack
order_1.save

order_2 = Order.new(start_date: '2044-04-02' , end_date: '2044-04-03', status: "confirmed")
order_2.robot = pastabot
order_2.user = john
order_2.save

order_3 = Order.new(start_date: '2044-02-10' , end_date: '2044-02-20', status: "cancelled")
order_3.robot = vacbot
order_3.user = erica
order_3.save

order_4 = Order.new(start_date: '2044-05-11' , end_date: '2044-06-18', status: "pending")
order_4.robot = swipebot
order_4.user = martin
order_4.save

order_5 = Order.new(start_date: '2044-07-15' , end_date: '2044-07-18', status: "confirmed")
order_5.robot = treebot
order_5.user = jessica
order_5.save

order_6 = Order.new(start_date: '2044-11-10' , end_date: '2044-12-13', status: "cancelled")
order_6.robot = grassbot
order_6.user = jack
order_6.save

order_7 = Order.new(start_date: '2044-08-29' , end_date: '2044-09-03', status: "pending")
order_7.robot = flowerbot
order_7.user = john
order_7.save

order_8 = Order.new(start_date: '2044-03-01' , end_date: '2044-03-12', status: "confirmed")
order_8.robot = dogbot
order_8.user = erica
order_8.save

order_9 = Order.new(start_date: '2044-12-01' , end_date: '2045-01-12', status: "cancelled")
order_9.robot = catbot
order_9.user = martin
order_9.save

order_10 = Order.new(start_date: '2044-05-02' , end_date: '2044-05-16', status: "pending")
order_10.robot = parrotbot
order_10.user = jessica
order_10.save
