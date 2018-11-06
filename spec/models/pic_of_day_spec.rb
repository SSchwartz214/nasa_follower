require 'rails_helper'

describe PicOfDay do
  it 'exists' do
    pod = PicOfDay.create(image_url: "www.image.com")
    expect(pod).to be_a PicOfDay
  end

  context 'validations' do
    it { should validate_uniqueness_of(:image_url) }
  end

  context 'instance_methods'
    context 'attributes' do
      it 'returns attributes' do
        pod = PicOfDay.create(image_url: "https://images-assets.nasa.gov/image/PIA07081/PIA07081~thumb.jpg")

        expect(pod.image_url).to eq("https://images-assets.nasa.gov/image/PIA07081/PIA07081~thumb.jpg")
      end
    end
    context 'class methods' do
      it "imports pic of day" do
        expect(NasaPodService).to receive(:pod).and_return 'https://images-assets.nasa.gov/image/PIA07081/PIA07081~thumb.jpg'

        expect(PicOfDay.count).to eq(0)

        PicOfDay.import_pics

        expect(PicOfDay.count).to eq(1)
        expect(PicOfDay.last.image_url).to eq("https://images-assets.nasa.gov/image/PIA07081/PIA07081~thumb.jpg")
      end
    end
end