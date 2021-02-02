class Playground < ApplicationRecord
  has_many :events, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true
end
