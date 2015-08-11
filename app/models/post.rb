class Post < ActiveRecord::Base
  has_many :categories, through: :post_categories
  has_many :post_categories
  belongs_to :user

  # validates :title, presence: true
end
