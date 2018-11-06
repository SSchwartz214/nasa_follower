class PicOfDay < ApplicationRecord
  validates_presence_of :image_url
  validates_uniqueness_of :image_url

  has_many :favorites
  has_many :users, through: :favorites

  def self.import_pics
    find_or_create_by(image_url: NasaPodService.pod)
  end
end
