class Contact < ApplicationRecord
  belongs_to :user
  has_many :phones, dependent: :destroy
  validates_uniqueness_of :name, scope: :user_id
end
