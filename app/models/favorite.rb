class Favorite < ApplicationRecord
  validates_presence_of :user_id, :pic_of_day_id
  validates_uniqueness_of :user, scope: :pic_of_day_id

  belongs_to :user
  belongs_to :pic_of_day
end
