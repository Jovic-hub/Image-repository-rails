require 'rails_helper'

RSpec.describe "pins/show", type: :view do
  current_user = User.first_or_create!(email: 'jovic@test.com', password: '123456', password_confirmation: '123456')
  before(:each)do 
    @pin = assign(:pin, Pin.create!(
      title: "Just a test",
      caption: "Just a test",
      images: Rack::Test::UploadedFile.new('spec/test.jpg', 'image/jpg'),
    ))
  end

  it "renders" do 
    render
    expect(rendered).to match(/Just a test/)
    expect(rendered).to match(/Just a test/)
    expect(rendered).to match(//)
  end
end
