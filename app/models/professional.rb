class Professional < ApplicationRecord
  validates :name, :gender, presence: true
  validates :gender, inclusion: { in: ['male', 'female'], message: "%{value} is not a valid - expected 'male' or 'female'" }
end
