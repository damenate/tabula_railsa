class CreateMeLikies < ActiveRecord::Migration
  def change
    create_table :me_likies do |t|
      t.string :name
      t.string :chocolate
      t.string :rainbows
      t.string :puppies
      t.string :cold_hard_cash
      t.integer :yes_no_id

      t.timestamps null: false
    end
  end
end
