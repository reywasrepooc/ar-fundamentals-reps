class CreateNonprofits < ActiveRecord::Migration[6.1]
  def change
    create_table :nonprofits do |t|
      t.string :name
      t.string :description
    end
  end
end
