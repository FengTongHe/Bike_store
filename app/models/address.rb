class Address < ApplicationRecord
  validates :name, :address, :city, :province, :email, presence: true
end
