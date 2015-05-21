class PostCategory < ActiveRecord::Base
	belongs_to :comment
	belongs_to :category
end
