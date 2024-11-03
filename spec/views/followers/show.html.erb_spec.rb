require 'rails_helper'

RSpec.describe "followers/show", type: :view do
  before(:each) do
    assign(:follower, Follower.create!(
      follower_id: 2,
      followed_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
