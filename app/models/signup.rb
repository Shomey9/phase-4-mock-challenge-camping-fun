class Signup < ApplicationRecord
  belongs_to :camper
  belongs_to :activity

  validates :time, numericality: { greater_than: -1, less_than: 24 }
end
