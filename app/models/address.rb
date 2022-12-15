class Address < ApplicationRecord
  validates :name, :address, :city, :province, :email, presence: true

  has_many :orders
end
