class Comment < ApplicationRecord
	belongs_to :user, class_name: 'User', foreign_key: 'user_id'
	 belongs_to :commentable, polymorphic: true
	 has_many :comments, as: :commentable
end




