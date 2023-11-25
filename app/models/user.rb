class User < ApplicationRecord
  has_many :contacts, dependent: :restrict_with_error
  has_many :phones, through: :contacts
  validates_presence_of :name
  validates_numericality_of :age, greater_than: 0, allow_nil: true
end
