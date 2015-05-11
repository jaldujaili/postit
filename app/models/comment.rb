class comment < ActiveRecord::Base
	belongs_to :user
	has_one :post
end