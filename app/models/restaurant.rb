class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :category, inclusion: { in: %w(japanese italian arab brazilian),
    message: "%{value} is not a valid category" }
  validates :registration_number, length: { is: 6 }
end
