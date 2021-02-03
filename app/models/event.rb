class Event < ApplicationRecord
  belongs_to :playground
  belongs_to :category

  validates :name, presence: true, uniqueness: { scope: :playground_id }
  # validates :location, presence: true, uniqueness: { scope: :playground_id }
  validates :date, presence: true, uniqueness: { scope: :playground_id }
  validates :price, presence: true, uniqueness: { scope: :playground_id }
  validates :reward, presence: true, uniqueness: { scope: :playground_id }
  validates :image_url, presence: true
  # has_one_attached :profile_pic
end
