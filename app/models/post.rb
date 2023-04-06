class Post < ApplicationRecord
	belongs_to :user, class_name: 'User', foreign_key: 'user_id'
	has_many :comments, as: :commentable
	has_many :likes
	

end  





