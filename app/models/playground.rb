class Playground < ApplicationRecord
  has_many :events, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true, uniqueness: true
  # validates :description, presence: true, uniqueness: true
  validates :banner_url, presence: true
  # geocoded_by :location
  # after_validation :geocode, if: :will_save_change_to_location?
  # has_one_attached :profile_pic
end
