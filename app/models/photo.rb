class Photo < Post
	validates :url, presence: true
	has_many :comments, dependent: :destroy
end
