class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_image
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :password
      t.integer :size

      t.timestamps
    end
  end
end
