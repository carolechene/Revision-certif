class Flat < ApplicationRecord
  belongs_to :user

  has_many :rentings, dependent: :destroy

  validates :address, presence: true
  validates :price, presence: true
end
