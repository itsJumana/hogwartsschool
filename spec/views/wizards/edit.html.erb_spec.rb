require 'rails_helper'

RSpec.describe "wizards/edit", type: :view do
  let(:wizard) {
    Wizard.create!(
      name: "MyString",
      email: "MyString",
      password_digest: "MyString",
      bio: "MyText",
      muggle_relative: false,
      house: "MyString",
      profile_image: "MyString"
    )
  }

  before(:each) do
    assign(:wizard, wizard)
  end

  it "renders the edit wizard form" do
    render

    assert_select "form[action=?][method=?]", wizard_path(wizard), "post" do

      assert_select "input[name=?]", "wizard[name]"

      assert_select "input[name=?]", "wizard[email]"

      assert_select "input[name=?]", "wizard[password_digest]"

      assert_select "textarea[name=?]", "wizard[bio]"

      assert_select "input[name=?]", "wizard[muggle_relative]"

      assert_select "input[name=?]", "wizard[house]"

      assert_select "input[name=?]", "wizard[profile_image]"
    end
  end
end
