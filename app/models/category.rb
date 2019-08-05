class Category < ApplicationRecord
  has_many :post
  validates :name, uniqueness: true
  validates :name, presence: true

end
