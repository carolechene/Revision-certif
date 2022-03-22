class Renting < ApplicationRecord
  belongs_to :user
  belongs_to :flat

  STATUS = ['accepted', 'pending', 'rejected']
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, inclusion: { in: STATUS }
end
