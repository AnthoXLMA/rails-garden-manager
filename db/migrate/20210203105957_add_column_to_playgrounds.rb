class AddColumnToPlaygrounds < ActiveRecord::Migration[6.0]
  def change
    add_column :playgrounds, :description, :string
  end
end
