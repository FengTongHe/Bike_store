class Tax < ApplicationRecord
  validates :name, :gst, :pst, presence: true, uniqueness: true
end
