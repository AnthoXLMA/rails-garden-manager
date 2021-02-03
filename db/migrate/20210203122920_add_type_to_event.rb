class AddTypeToEvent < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :category, foreign_key: true
  end
end
