require 'rails_helper'

RSpec.describe "administrators/new", type: :view do
  before(:each) do
    assign(:administrator, Administrator.new(
      wizard: nil,
      role: "MyString"
    ))
  end

  it "renders new administrator form" do
    render

    assert_select "form[action=?][method=?]", administrators_path, "post" do

      assert_select "input[name=?]", "administrator[wizard_id]"

      assert_select "input[name=?]", "administrator[role]"
    end
  end
end
