class User < ActiveRecord::Base
	#has_many :active_relationships, class_name: "Relationship",
								#foreign_key: "follower_id",
								#dependent: :destroy
	#has_many :passive_relationships, class_name: "Relationship",
								#foreign_key: "followed_id",
								#dependent: :destroy
	#has_many :following, through: :active_relationships, source: :followed
	#has_many :followers, through: :passive_relationships, source: :follower

	has_and_belongs_to_many :following, join_table: "relationships", class_name: "User", foreign_key: "follower_id"

	has_and_belongs_to_many :followers, join_table: "relationships", class_name: "User", foreign_key: "user_id"


	# has_many :posts, dependent: :destroy
	# has_many :texts, dependent: :destroy
	# has_many :photos, dependent: :destroy
	# has_many :comments, dependent: :destroy
end
