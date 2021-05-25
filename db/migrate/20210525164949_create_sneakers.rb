class CreateSneakers < ActiveRecord::Migration[6.0]
  def change
    create_table :sneakers do |t|
      t.string :image
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
