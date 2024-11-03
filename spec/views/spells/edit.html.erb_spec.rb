require 'rails_helper'

RSpec.describe "spells/edit", type: :view do
  let(:spell) {
    Spell.create!(
      wizard: nil,
      name: "MyString",
      description: "MyText"
    )
  }

  before(:each) do
    assign(:spell, spell)
  end

  it "renders the edit spell form" do
    render

    assert_select "form[action=?][method=?]", spell_path(spell), "post" do

      assert_select "input[name=?]", "spell[wizard_id]"

      assert_select "input[name=?]", "spell[name]"

      assert_select "textarea[name=?]", "spell[description]"
    end
  end
end
