require_relative 'spec_helper'

describe User do
  let!(:cooper) { User.create(first_name: "Cooper", last_name: "Sawyer", territory: "MD") }
  let!(:dion) { User.create(first_name: "Dion", last_name: "Theroulde", territory: "PHL") }
  let!(:drew) { User.create(first_name: "Drew", last_name: "McIndoe", territory: "PHL") }
  let!(:erica) { User.create(first_name: "Erica", last_name: "Winne", territory: "PHL") }
  let!(:gillian) { User.create(first_name: "Gillian", last_name: "Wenhold", territory: "PHL") }
  let!(:gordon) { User.create(first_name: "Gordon", last_name: "Hodanich", territory: "PHL") }
  let!(:ivan) { User.create(first_name: "Ivan", last_name: "Candido", territory: "TPA") }
  let!(:jelena) { User.create(first_name: "Jelena", last_name: "Durovic", territory: "HOU") }
  let!(:jon) { User.create(first_name: "Jon", last_name: "Gonzalez", territory: "PHL") }
  let!(:kurstyn) { User.create(first_name: "Kurstyn", last_name: "Storms", territory: "PHL") }
  let!(:kyle) { User.create(first_name: "Kyle", last_name: "Schechter", territory: "NJ") }
  let!(:rob) { User.create(first_name: "Rob", last_name: "Gentile", territory: "PHL") }
  let!(:sebastian) { User.create(first_name: "Sebastian", last_name: "Kopp", territory: "PHL") }
  let!(:steve) { User.create(first_name: "Steve", last_name: "Crane", territory: "PHL") }

  let!(:alexs) { Nonprofit.create(name: "Alex's Lemonade Stand", description: "Alex's Lemonade Stand Foundation is an American pediatric cancer charity founded by Alexandra \"Alex\" Scott, who lived in Pennsylvania and suffered from neuroblastoma.") }
  let!(:blm) { Nonprofit.create(name: "Black Lives Matter", description: "The official #BlackLivesMatter Global Network builds power to bring justice, healing, and freedom to Black people across the globe.") }
  let!(:bridges) { Nonprofit.create(name: "Bridges", description: "BRIDGES provides students an opportunity to find their voice through unique experiential learning activities that are adventurous, relational and transformative. As a result, participants are empowered to reach across racial and socio-economic divides, are prepared for secondary educational opportunities and careers, and are engaged in civic affairs in their communities.") }
  let!(:hope) { Nonprofit.create(name: "H.O.P.E.", description: "Homeless Organizing for Power and Equality (H.O.P.E.) is an organization whose members are exclusively people who are currently experiencing or have formerly experienced homelessness. H.O.P.E. is a voice for the homeless community in Memphis, redefining and challenging people’s ideas about homelessness and bridging the gap between the unsheltered and sheltered communities through grassroots activism, organizing, education, networking, and skills-training.") }
  let!(:streetdog) { Nonprofit.create(name: "Streetdog Foundation", description: "Streetdog Foundation rescues, rehabilitates, and re-homes stray and abandoned dogs in Memphis, TN.") }

  let!(:cooper_alexs) { Donation.create(user: cooper, nonprofit: alexs, amount: 10) }
  let!(:dion_alexs) { Donation.create(user: dion, nonprofit: alexs, amount: 17) }
  let!(:drew_alexs) { Donation.create(user: drew, nonprofit: alexs, amount: 104) }
  let!(:erica_alexs) { Donation.create(user: erica, nonprofit: alexs, amount: 23) }
  let!(:gillian_alexs) { Donation.create(user: gillian, nonprofit: alexs, amount: 34) }
  let!(:gordon_alexs) { Donation.create(user: gordon, nonprofit: alexs, amount: 12) }
  let!(:jelena_alexs) { Donation.create(user: jelena, nonprofit: alexs, amount: 55) }
  let!(:jon_alexs) { Donation.create(user: jon, nonprofit: alexs, amount: 10) }
  let!(:kurstyn_alexs) { Donation.create(user: kurstyn, nonprofit: alexs, amount: 32) }
  let!(:kyle_alexs) { Donation.create(user: kyle, nonprofit: alexs, amount: 106) }
  let!(:rob_alexs) { Donation.create(user: rob, nonprofit: alexs, amount: 59) }
  let!(:sebastian_alexs) { Donation.create(user: sebastian, nonprofit: alexs, amount: 32) }
  let!(:steve_alexs) { Donation.create(user: steve, nonprofit: alexs, amount: 12) }
  let!(:cooper_blm) { Donation.create(user: cooper, nonprofit: blm, amount: 49) }
  let!(:dion_blm) { Donation.create(user: dion, nonprofit: blm, amount: 112) }
  let!(:drew_blm) { Donation.create(user: drew, nonprofit: blm, amount: 28) }
  let!(:erica_blm) { Donation.create(user: erica, nonprofit: blm, amount: 95) }
  let!(:gillian_blm) { Donation.create(user: gillian, nonprofit: blm, amount: 500) }
  let!(:gordon_blm) { Donation.create(user: gordon, nonprofit: blm, amount: 290) }
  let!(:jelena_blm) { Donation.create(user: jelena, nonprofit: blm, amount: 38) }
  let!(:jon_blm) { Donation.create(user: jon, nonprofit: blm, amount: 120) }
  let!(:kurstyn_blm) { Donation.create(user: kurstyn, nonprofit: blm, amount: 43) }
  let!(:kyle_blm) { Donation.create(user: kyle, nonprofit: blm, amount: 129) }
  let!(:rob_blm) { Donation.create(user: rob, nonprofit: blm, amount: 32) }
  let!(:sebastian_blm) { Donation.create(user: sebastian, nonprofit: blm, amount: 50) }
  let!(:steve_blm) { Donation.create(user: steve, nonprofit: blm, amount: 122) }
  let!(:dion_bridges) { Donation.create(user: dion, nonprofit: bridges, amount: 24) }
  let!(:gillian_bridges) { Donation.create(user: gillian, nonprofit: bridges, amount: 100) }
  let!(:jon_bridges) { Donation.create(user: jon, nonprofit: bridges, amount: 24) }
  let!(:kurstyn_bridges) { Donation.create(user: kurstyn, nonprofit: bridges, amount: 290) }
  let!(:kyle_bridges) { Donation.create(user: kyle, nonprofit: bridges, amount: 290) }
  let!(:cooper_hope) { Donation.create(user: cooper, nonprofit: hope, amount: 20) }
  let!(:drew_hope) { Donation.create(user: drew, nonprofit: hope, amount: 390) }
  let!(:gillian_hope) { Donation.create(user: gillian, nonprofit: hope, amount: 20) }
  let!(:rob_hope) { Donation.create(user: rob, nonprofit: hope, amount: 200) }
  let!(:steve_hope) { Donation.create(user: steve, nonprofit: hope, amount: 120) }
  let!(:erica_streetdog) { Donation.create(user: erica, nonprofit: streetdog, amount: 320) }
  let!(:gordon_streetdog) { Donation.create(user: gordon, nonprofit: streetdog, amount: 320) }
  let!(:jelena_streetdog) { Donation.create(user: jelena, nonprofit: streetdog, amount: 320) }
  let!(:kurstyn_streetdog) { Donation.create(user: kurstyn, nonprofit: streetdog, amount: 320) }
  let!(:sebastian_streetdog) { Donation.create(user: sebastian, nonprofit: streetdog, amount: 320) }

  describe "attributes" do
    it "has a first_name, last_name and territory" do
      expect(gillian).to have_attributes(first_name: "Gillian", last_name: "Wenhold", territory: "PHL")
    end
  end

  describe "associations" do
    it "has many donations" do
      expect(gillian.donations).to eq([gillian_alexs, gillian_blm, gillian_bridges, gillian_hope])
    end

    it "has many nonprofits through donations" do
      expect(gillian.nonprofits).to eq([alexs, blm, bridges, hope])
    end
  end

  describe "querying fundamentals" do
    it "`User.get_cooper` returns the user whose `first_name` is 'Cooper'" do
      expect(User.get_cooper).to eq(cooper)
    end
    it "`User.get_first_5` returns the first 5 users in the database" do
      expect(User.get_first_5).to eq([cooper, dion, drew, erica, gillian])
    end
    it "`User.get_nj_user` returns the user with the `territory` of 'NJ'" do
      expect(User.get_nj_user).to eq(kyle)
    end

    it "`User.get_id_of_9` returns the user with an `id` of 9" do
      expect(User.get_id_of_9).to eq(jon)
    end

    it "`User.get_wenhold` returns the user with the `last_name` of 'Wenhold'" do
      expect(User.get_wenhold).to eq(gillian)
    end

    it "`User.get_last` returns the last user in the database" do
      expect(User.get_last).to eq(steve)
    end

    it "`User.get_sebastian_kopp` returns the user with the `first_name` of 'Sebastian' and the `last_name` of 'Kopp'" do
      expect(User.get_sebastian_kopp).to eq(sebastian)
    end

    it "`User.phl_users` returns a collection of all users with the `territory` of 'PHL'" do
      expect(User.phl_users).to eq([dion, drew, erica, gillian, gordon, jon, kurstyn, rob, sebastian, steve])
    end

    it "`User.reverse_alphabetical_by_first_name` returns a collection of all users in reverse alphabetical order by `first_name`" do
      expect(User.reverse_alphabetical_by_first_name).to eq([steve, sebastian, rob, kyle, kurstyn, jon, jelena, ivan, gordon, gillian, erica, drew, dion, cooper])
    end

    it "`User.first_5_alphabetical_by_last_name` returns a collection of the first 5 users sorted alphabetically by `last_name`" do
      expect(User.first_5_alphabetical_by_last_name).to eq([ivan, steve, jelena, rob, jon])
    end

    it "`User.amount_of_phl_users` returns the amount of users with a `territory` of 'PHL'" do
      expect(User.amount_of_phl_users).to eq(10)
    end

    it "`User.unique_territories` returns an array of all the territories of the users (without duplicates)" do
      expect(User.unique_territories).to eq(["MD", "PHL", "TPA", "HOU", "NJ"])
    end

    it "`User.non_phl_users` returns an array of all users who do not have a `territory` of 'PHL'" do
      expect(User.non_phl_users).to eq([cooper, ivan, jelena, kyle])
    end

  end
end