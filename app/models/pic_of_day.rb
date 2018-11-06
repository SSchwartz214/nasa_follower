class PicOfDay < ApplicationRecord
  validates_uniqueness_of :image_url

  def self.import_pics
    find_or_create_by(image_url: NasaPodService.pod)
  end
end
