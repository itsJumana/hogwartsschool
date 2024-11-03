require 'rails_helper'

RSpec.describe "wizards/show", type: :view do
  before(:each) do
    assign(:wizard, Wizard.create!(
      name: "Name",
      email: "Email",
      password_digest: "Password Digest",
      bio: "MyText",
      muggle_relative: false,
      house: "House",
      profile_image: "Profile Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password Digest/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/House/)
    expect(rendered).to match(/Profile Image/)
  end
end
