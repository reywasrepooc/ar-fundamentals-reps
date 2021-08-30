class Nonprofit < ActiveRecord::Base
  has_many :donations
  has_many :users, through: :donations

  def self.get_first
    first
  end

  def self.get_id_of_4
    find(4)
  end

  def self.get_blm
    find_by(name: "Black Lives Matter")
  end

  def self.get_last_3
    last(3)
  end

  def self.get_alexs
    find_by(name: "Alex's Lemonade Stand")
  end

  def self.get_id_of_10
    find_by(id: 10)
  end

  def self.get_first_2
    first(2)
  end

  def self.in_alphabetical_order
    order(:name)
  end

  def self.get_amount_of_nonprofits
    count
  end

  def self.only_names
    pluck(:name)
  end

  def self.reverse_alphabetical_order
    order(name: :desc)
  end

  def self.only_descriptions
    pluck(:description)
  end

end