class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.text :offer
      t.date :expires
      t.text :menu
      t.boolean :available
      t.integer :user_id

      t.timestamps
    end
  end
end
