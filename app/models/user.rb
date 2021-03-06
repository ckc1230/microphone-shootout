class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, :email, presence: true
  extend FriendlyId
  	friendly_id :username, use: :slugged
  has_many :shootouts
  has_many :fav_shootouts
end
