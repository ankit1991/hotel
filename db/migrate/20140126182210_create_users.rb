class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :name
      t.string :password_digest
      t.string :agreement_link

      t.timestamps
    end
  end
end
