class Comment < ApplicationRecord
  belongs_to: user
  belongs_to: posts

  with_options presence: true do
    validates :user
    validates :room
    validates :comment, length: { maximum: 400 }
  end
end
