class User < ActiveRecord::Base
	#has_many :active_relationships, class_name: "Relationship",
								#foreign_key: "follower_id",
								#dependent: :destroy
	#has_many :passive_relationships, class_name: "Relationship",
								#foreign_key: "followed_id",
								#dependent: :destroy
	#has_many :following, through: :active_relationships, source: :followed
	#has_many :followers, through: :passive_relationships, source: :follower

	has_many :relationships, foreign_key: 'user_id'
    has_many :reverse_relations, class_name: 'Relationship', foreign_key: 'follower_id'

    has_many :following, :through => :relationships, source: "followee"
    has_many :followers, :through => :reverse_relations, source: "follower"


	has_many :posts, dependent: :destroy
	has_many :texts, dependent: :destroy
	has_many :photos, dependent: :destroy
	has_many :comments, dependent: :destroy


	has_secure_password
	validates :email, presence: true, uniqueness: true

	# def following?(other_user)
	# 	relationships.find_by_user_id(other_user.id)
	# end


	# def follow(other_user)
	#   following.push other_user
 #  	end

 #  	def unfollow(other_user)
 #  		following.delete other_user
	# end 

end
