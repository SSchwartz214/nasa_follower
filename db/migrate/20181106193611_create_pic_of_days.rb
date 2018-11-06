class CreatePicOfDays < ActiveRecord::Migration[5.2]
  def change
    create_table :pic_of_days do |t|
      t.string :image_url

      t.timestamps
    end
  end
end
