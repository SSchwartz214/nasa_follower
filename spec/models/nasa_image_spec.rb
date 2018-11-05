require 'rails_helper'

describe NasaImage do
  let(:attrs) {
    {:href=>"https://images-assets.nasa.gov/image/PIA07081/collection.json",
      :links=>[{:href=>"https://images-assets.nasa.gov/image/PIA07081/PIA07081~thumb.jpg", :render=>"image", :rel=>"preview"}],
      :data=>
       [{:description_508=>"Mars Rover Studies Soil on Mars",
         :center=>"JPL",
         :keywords=>["Mars", "Mars Exploration Rover MER"],
         :description=>"Mars Rover Studies Soil on Mars",
         :nasa_id=>"PIA07081",
         :media_type=>"image",
         :secondary_creator=>"NASA/JPL",
         :date_created=>"2004-11-30T21:29:24Z",
         :title=>"Mars Rover Studies Soil on Mars"}]}
  }

  subject {NasaImage.new(attrs)}

  it 'exists' do
    expect(subject).to be_a NasaImage
  end

  context 'instance_methods'
    context '#attributes' do
      it 'returns attributes' do
        expect(subject.image).to eq("https://images-assets.nasa.gov/image/PIA07081/PIA07081~thumb.jpg")
        expect(subject.title).to eq("Mars Rover Studies Soil on Mars")
        expect(subject.description).to eq("Mars Rover Studies Soil on Mars")
        expect(subject.date).to eq("2004-11-30T21:29:24Z")
      end
    end
end