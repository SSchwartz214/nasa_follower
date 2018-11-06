namespace :pic_of_day_importer do
  desc "imports pics of day from NASA"
  task run: :environment do
    PicOfDay.import_pics
  end
end