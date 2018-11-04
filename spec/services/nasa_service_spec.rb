require 'rails_helper'

describe NasaService do
  subject{NasaService.new}

  it 'exists' do
    expect(subject).to be_a NasaService
  end

  describe 'instance methods' do
    context 'picture of the day' do
      it 'returns the picture of the day' do
        pod = subject.pod

        expect(pod).to be_instance_of(String)
      end 
    end
  end
end