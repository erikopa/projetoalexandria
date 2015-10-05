class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |user|
      user.string :first_name
      user.string :last_name
      user.string :email
      user.string :role
      user.timestamps null: false
    end
  end
end
