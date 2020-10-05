class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  with_options presence: true do
    validates :user
    validates :room
    validates :problem, length: { maximum: 40 }
    validates :detail,  length: { maximum: 40 }
  end
end
