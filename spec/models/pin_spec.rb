require 'rails_helper'

RSpec.describe Pin, type: :model do
  current_user = User.first_or_create!(email: 'jovic@test.com', password: '123456', password_confirmation: '123456')
  it 'has a title' do
    pin = Pin.new(
      title: '',
      caption: 'Just a test',
      images: Rack::Test::UploadedFile.new('spec/test.jpg', 'image/jpg'),
    )
    expect(pin).to_not be_valid
    pin.title = "has a title"
    expect(pin).to be_valid
  end 

  it 'has a caption' do
    pin = Pin.new(
      title: 'Just a test',
      caption: '',
      images: Rack::Test::UploadedFile.new('spec/test.jpg', 'image/jpg'),
    )
    expect(pin).to_not be_valid
    pin.caption = "has a caption"
    expect(pin).to be_valid
  end

end
