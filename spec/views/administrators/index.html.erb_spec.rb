require 'rails_helper'

RSpec.describe "administrators/index", type: :view do
  before(:each) do
    assign(:administrators, [
      Administrator.create!(
        wizard: nil,
        role: "Role"
      ),
      Administrator.create!(
        wizard: nil,
        role: "Role"
      )
    ])
  end

  it "renders a list of administrators" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Role".to_s), count: 2
  end
end
