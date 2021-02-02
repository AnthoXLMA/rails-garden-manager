class CreatePlaygrounds < ActiveRecord::Migration[5.2]
  def change
    create_table :playgrounds do |t|
      t.string :name
      t.string :banner_url
      t.string :location
      t.string :country

      t.timestamps
    end
  end
end
