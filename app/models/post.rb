class Post < ApplicationRecord
  validates :title, presence: true
  validates_associated :category
  has_rich_text :body
  belongs_to :category, required: true

  attr_accessor :new_category_name
  before_save :create_category_from_name


  scope :visible, -> { where(published: true) }

  def create_category_from_name
      create_category(name: new_category_name) unless new_category_name.blank?
  end

  def category_name=(name)
    self.category = Category.find_or_create_by(name: name)
  end

  def category_name
     self.category ? self.category.name : nil
  end

end
