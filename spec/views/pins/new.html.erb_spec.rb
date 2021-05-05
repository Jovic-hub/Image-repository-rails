require 'rails_helper'

RSpec.describe "pins/new", type: :view do
  current_user = User.first_or_create!(email: 'jovic@test.com', password: '123456', password_confirmation: '123456')
  before(:each)do 
    assign(:pin, Pin.new(
      title: "Just a test",
      caption: "Just a test",
      images: Rack::Test::UploadedFile.new('spec/test.jpg', 'image/jpg'),
    ))
  end

  it 'renders new pin' do 
    render 
    assert_select 'form[action=?][method=?]', pins_path, 'pin' do
      assert_select 'input[name=?]', 'pin[title]'
      assert_select 'textarea[name=?]', 'pin[caption]'
    end
  end
end
