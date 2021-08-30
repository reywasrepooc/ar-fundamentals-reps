class User < ActiveRecord::Base
  has_many :donations
  has_many :nonprofits, through: :donations

  def self.get_cooper
    find_by(first_name: "Cooper")
  end

  def self.get_first_5
    first(5)
  end

  def self.get_nj_user
    find_by(territory: "NJ")
  end

  def self.get_id_of_9
    find(9)
  end

  def self.get_wenhold
    find_by(last_name: "Wenhold")
  end

  def self.get_last
    last
  end

  def self.get_sebastian_kopp
    find_by(first_name: "Sebastian", last_name: "Kopp")
  end

  def self.phl_users
    where(territory: "PHL")
  end

  def self.reverse_alphabetical_by_first_name
    order(first_name: :desc)
  end

  def self.first_5_alphabetical_by_last_name
    order(:last_name).first(5)
  end

  def self.amount_of_phl_users
    where(territory: "PHL").count
  end

  def self.unique_territories
    pluck(:territory).uniq
  end

  def self.non_phl_users
    where("territory != 'PHL'")
  end
end
