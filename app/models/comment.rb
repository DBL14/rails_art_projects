class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  # vaildates :user_id, presence: true
  # vaildates :post_id, presence: true
end
