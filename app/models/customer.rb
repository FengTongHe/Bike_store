class Customer < ApplicationRecord
  validates :full_name, :phone_number, :email, presence: true, uniqueness: true

  has_one_attached :image
  has_many :orders

  def self.search(search)
    if search
      keyword = "%" + search + "%"
      @customers = Customer.where("full_name LIKE ? OR phone_number LIKE ?", keyword, keyword)
    else
      Customer.all
    end
  end
end
