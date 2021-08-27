class CreateDonations < ActiveRecord::Migration[6.1]
  def change
    create_table :donations do |t|
      t.integer :amount
      t.integer :nonprofit_id
      t.integer :user_id
    end
  end
end
