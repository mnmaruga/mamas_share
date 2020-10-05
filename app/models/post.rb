class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  # with_options presence :true do
  #   validates :user
  #   validates :room
  #   validates :problem ,length: { max: 20 }
  #   validates :detail
  # end
end
