class Category < ApplicationRecord
  has_many :post
  # validates :name, uniqueness: true, presence: true
end
