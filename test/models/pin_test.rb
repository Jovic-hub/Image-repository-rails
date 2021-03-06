require "test_helper"

RSpec.describe Pin, type: :model do
  current_user = User.first_or_create!(email: 'jovic@test.com', password: '123', password_confirmation: '123')
  it 'has a title' do
    pin = Pin.new(
      title: '',
      caption: 'Just a test',
    )
    expect(pin).to_not be_valid
    pin.title = "has a title"
    expect(pin).to be_valid
  end 

  it 'has a caption' do
    pin = Pin.new(
      title: 'Just a test',
      caption: ''
    )
    expect(pin).to_not be_valid
    pin.title = "has a caption"
    expect(pin).to be_valid
  end

  it 'has an image' do
  end
end
