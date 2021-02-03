class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :playground, foreign_key: true
      t.references :category, foreign_key: true
      t.string :name
      t.string :location
      t.integer :reward
      t.integer :price
      t.string :image_url

      t.timestamps
    end
  end
end
