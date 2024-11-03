require 'rails_helper'

RSpec.describe "spells/index", type: :view do
  before(:each) do
    assign(:spells, [
      Spell.create!(
        wizard: nil,
        name: "Name",
        description: "MyText"
      ),
      Spell.create!(
        wizard: nil,
        name: "Name",
        description: "MyText"
      )
    ])
  end

  it "renders a list of spells" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
