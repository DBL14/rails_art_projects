class Text < Post
	validates :body, presence: true
	has_many :comments, dependent: :destroy
end
