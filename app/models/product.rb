class Product < ApplicationRecord
  belongs_to :category
  has_one_attached :image
  has_many :orderables
  has_many :carts, through: :orderables

  def self.search(search)
    categoryArray = []
    @categories = Category.all

    @categories.each do |c|
      categoryArray.push(c.id)
    end

    if search
      if categoryArray.include? search.to_i
        @products = Product.where("category_id = ?", search)
      else
        keyword = "%" + search + "%"
        @products = Product.where("name LIKE ? OR manufacture LIKE ? OR comment LIKE ?", keyword,
                                  keyword, keyword)
      end
    else
      Product.all
    end
  end

  paginates_per 24
end
