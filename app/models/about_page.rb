class AboutPage < ApplicationRecord
  validates :Title, :Content, presence: true
end
