require 'rails_helper'

RSpec.describe "wizards/index", type: :view do
  before(:each) do
    assign(:wizards, [
      Wizard.create!(
        name: "Name",
        email: "Email",
        password_digest: "Password Digest",
        bio: "MyText",
        muggle_relative: false,
        house: "House",
        profile_image: "Profile Image"
      ),
      Wizard.create!(
        name: "Name",
        email: "Email",
        password_digest: "Password Digest",
        bio: "MyText",
        muggle_relative: false,
        house: "House",
        profile_image: "Profile Image"
      )
    ])
  end

  it "renders a list of wizards" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Password Digest".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("House".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Profile Image".to_s), count: 2
  end
end
