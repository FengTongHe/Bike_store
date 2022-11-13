class Customer < ApplicationRecord
  has_one_attached :image

  def self.search(search)
    if search
      keyword = "%" + search + "%"
      @customers = Customer.where("full_name LIKE ? OR phone_number LIKE ?", keyword, keyword)
    else
      Customer.all
    end
  end
end
