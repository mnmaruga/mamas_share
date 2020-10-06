class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :comments

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :status

  validates :status, presence: true
end
