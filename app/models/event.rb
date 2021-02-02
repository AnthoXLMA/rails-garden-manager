class Event < ApplicationRecord
  belongs_to :playground

  validates :name, presence: true, uniqueness: { scope: :playground_id }
  validates :image_url, presence: true
end
