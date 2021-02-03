class Category < ApplicationRecord
  has_many :events, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  # validates :description, presence: true, uniqueness: true

end
