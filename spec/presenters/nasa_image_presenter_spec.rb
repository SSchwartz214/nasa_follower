require 'rails_helper'

describe NasaImagePresenter do
  subject { NasaImagePresenter.new("mars") }

  it "exists" do
    expect(subject).to be_a NasaImagePresenter
  end

  context "instance methods" do
    context "#images" do
      it 'returns images relevant to the search term' do
        expect(subject.images.count).to eq 3
        expect(subject.images.first).to be_a NasaImage
      end
    end
  end
end