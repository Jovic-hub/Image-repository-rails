require 'rails_helper'

RSpec.describe "pins/edit", type: :view do
  current_user = User.first_or_create!(email: 'jovic@test.com', password: '123456', password_confirmation: '123456')
  before(:each)do 
    @pin = assign(:pin, Pin.create!(
      title: "Just a test",
      images: Rack::Test::UploadedFile.new('spec/test.jpg', 'image/jpg'),
      caption: "Just a test",
    ))
  end

  it "renders" do 
    render 
    assert_select "form[action=?][method=?]", pin_path(@pin), "pin" do
      assert_select "textfield[name=?]", "pin[title]"
      assert_select "filefield[name=?],", "pin[images]"
      assert_select "textarea[name=?]", "pin[caption]"
    end
  end
end
