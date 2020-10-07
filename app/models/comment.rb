class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  with_options presence: true do
    validates :user
    validates :post
    validates :comment, length: { maximum: 400 }
  end
end
