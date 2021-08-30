class Donation < ActiveRecord::Base
  belongs_to :nonprofit
  belongs_to :user

  def self.get_last_3
    last(3)
  end

  def self.get_id_of_2
    find(2)
  end

  def self.get_from_first_user
    where(user_id: 1)
  end

  def self.get_id_of_18
    find(18)
  end

  def self.get_from_last_nonprofit
    where(nonprofit: Nonprofit.last)
  end

  def self.order_by_donation_amount
    order(:amount)
  end

  def self.amount_over_350
    where("amount > 350")
  end

  def self.count_of_donations
    count
  end

  def self.donations_to_nonprofit_with_id_of_4
    where(nonprofit_id: 4)
  end

  def self.total_dollars_donated
    sum(:amount)
  end

  def self.donations_by_user_with_id_of_13
    where(user_id: 13)
  end
end