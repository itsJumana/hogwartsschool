require 'rails_helper'

RSpec.describe "spells/new", type: :view do
  before(:each) do
    assign(:spell, Spell.new(
      wizard: nil,
      name: "MyString",
      description: "MyText"
    ))
  end

  it "renders new spell form" do
    render

    assert_select "form[action=?][method=?]", spells_path, "post" do

      assert_select "input[name=?]", "spell[wizard_id]"

      assert_select "input[name=?]", "spell[name]"

      assert_select "textarea[name=?]", "spell[description]"
    end
  end
end
