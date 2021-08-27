# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting user/nonprofit/donation data..."
Donation.destroy_all
User.destroy_all
Nonprofit.destroy_all

puts "Creating users..."
cooper = User.create(first_name: "Cooper", last_name: "Sawyer", territory: "MD")
dion = User.create(first_name: "Dion", last_name: "Theroulde", territory: "PHL")
drew = User.create(first_name: "Drew", last_name: "McIndoe", territory: "PHL")
erica = User.create(first_name: "Erica", last_name: "Winne", territory: "PHL")
gillian = User.create(first_name: "Gillian", last_name: "Wenhold", territory: "PHL")
gordon = User.create(first_name: "Gordon", last_name: "Hodanich", territory: "PHL")
ivan = User.create(first_name: "Ivan", last_name: "Candido", territory: "TPA")
jelena = User.create(first_name: "Jelena", last_name: "Durovic", territory: "HOU")
jon = User.create(first_name: "Jon", last_name: "Gonzalez", territory: "PHL")
kurstyn = User.create(first_name: "Kurstyn", last_name: "Storms", territory: "PHL")
kyle = User.create(first_name: "Kyle", last_name: "Schechter", territory: "NJ")
rob = User.create(first_name: "Rob", last_name: "Gentile", territory: "PHL")
sebastian = User.create(first_name: "Sebastian", last_name: "Kopp", territory: "PHL")
steve = User.create(first_name: "Steve", last_name: "Crane", territory: "PHL")

puts "Creating nonprofits..."
alexs = Nonprofit.create(
  name: "Alex's Lemonade Stand",
  description: "Alex's Lemonade Stand Foundation is an American pediatric cancer charity founded by Alexandra \"Alex\" Scott, who lived in Pennsylvania and suffered from neuroblastoma."
)
blm = Nonprofit.create(
  name: "Black Lives Matter",
  description: "The official #BlackLivesMatter Global Network builds power to bring justice, healing, and freedom to Black people across the globe."
)
bridges = Nonprofit.create(
  name: "Bridges",
  description: "BRIDGES provides students an opportunity to find their voice through unique experiential learning activities that are adventurous, relational and transformative. As a result, participants are empowered to reach across racial and socio-economic divides, are prepared for secondary educational opportunities and careers, and are engaged in civic affairs in their communities."
)
hope = Nonprofit.create(
  name: "H.O.P.E.",
  description: "Homeless Organizing for Power and Equality (H.O.P.E.) is an organization whose members are exclusively people who are currently experiencing or have formerly experienced homelessness. H.O.P.E. is a voice for the homeless community in Memphis, redefining and challenging people’s ideas about homelessness and bridging the gap between the unsheltered and sheltered communities through grassroots activism, organizing, education, networking, and skills-training."
)
streetdog = Nonprofit.create(
  name: "Streetdog Foundation",
  description: "Streetdog Foundation rescues, rehabilitates, and re-homes stray and abandoned dogs in Memphis, TN."
)

puts "Creating donations..."
Donation.create(user: cooper, nonprofit: alexs, amount: 10)
Donation.create(user: dion, nonprofit: alexs, amount: 17)
Donation.create(user: drew, nonprofit: alexs, amount: 104)
Donation.create(user: erica, nonprofit: alexs, amount: 23)
Donation.create(user: gillian, nonprofit: alexs, amount: 34)
Donation.create(user: gordon, nonprofit: alexs, amount: 12)
Donation.create(user: jelena, nonprofit: alexs, amount: 55)
Donation.create(user: jon, nonprofit: alexs, amount: 10)
Donation.create(user: kurstyn, nonprofit: alexs, amount: 32)
Donation.create(user: kyle, nonprofit: alexs, amount: 106)
Donation.create(user: rob, nonprofit: alexs, amount: 59)
Donation.create(user: sebastian, nonprofit: alexs, amount: 32)
Donation.create(user: steve, nonprofit: alexs, amount: 12)
Donation.create(user: cooper, nonprofit: blm, amount: 49)
Donation.create(user: dion, nonprofit: blm, amount: 112)
Donation.create(user: drew, nonprofit: blm, amount: 28)
Donation.create(user: erica, nonprofit: blm, amount: 95)
Donation.create(user: gillian, nonprofit: blm, amount: 500)
Donation.create(user: gordon, nonprofit: blm, amount: 290)
Donation.create(user: jelena, nonprofit: blm, amount: 38)
Donation.create(user: jon, nonprofit: blm, amount: 120)
Donation.create(user: kurstyn, nonprofit: blm, amount: 43)
Donation.create(user: kyle, nonprofit: blm, amount: 129)
Donation.create(user: rob, nonprofit: blm, amount: 32)
Donation.create(user: sebastian, nonprofit: blm, amount: 50)
Donation.create(user: steve, nonprofit: blm, amount: 122)
Donation.create(user: dion, nonprofit: bridges, amount: 24)
Donation.create(user: gillian, nonprofit: bridges, amount: 100)
Donation.create(user: jon, nonprofit: bridges, amount: 24)
Donation.create(user: kurstyn, nonprofit: bridges, amount: 290)
Donation.create(user: kyle, nonprofit: bridges, amount: 290)
Donation.create(user: cooper, nonprofit: hope, amount: 20)
Donation.create(user: drew, nonprofit: hope, amount: 390)
Donation.create(user: gillian, nonprofit: hope, amount: 20)
Donation.create(user: rob, nonprofit: hope, amount: 200)
Donation.create(user: steve, nonprofit: hope, amount: 120)
Donation.create(user: erica, nonprofit: streetdog, amount: 320)
Donation.create(user: gordon, nonprofit: streetdog, amount: 320)
Donation.create(user: jelena, nonprofit: streetdog, amount: 320)
Donation.create(user: kurstyn, nonprofit: streetdog, amount: 320)
Donation.create(user: sebastian, nonprofit: streetdog, amount: 320)

puts "Seeding done!"