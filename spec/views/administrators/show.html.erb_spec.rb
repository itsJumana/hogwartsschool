require 'rails_helper'

RSpec.describe "administrators/show", type: :view do
  before(:each) do
    assign(:administrator, Administrator.create!(
      wizard: nil,
      role: "Role"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Role/)
  end
end
