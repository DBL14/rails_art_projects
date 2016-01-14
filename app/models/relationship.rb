class Relationship < ActiveRecord::Base
	belongs_to :follower, :foreign_key => "user_id", class_name: "User"
	belongs_to :followee, :foreign_key => "follower_id", class_name: "User"
	# validates :follower_id, presence: true
	# validates :followed_id, presence: true 
end
