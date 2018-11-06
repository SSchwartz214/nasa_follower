class User < ApplicationRecord
  has_many :favorites
  has_many :pic_of_days, through: :favorites
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
