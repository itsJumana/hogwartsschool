require 'rails_helper'

RSpec.describe "spells/show", type: :view do
  before(:each) do
    assign(:spell, Spell.create!(
      wizard: nil,
      name: "Name",
      description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
