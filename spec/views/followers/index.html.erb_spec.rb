require 'rails_helper'

RSpec.describe "followers/index", type: :view do
  before(:each) do
    assign(:followers, [
      Follower.create!(
        follower_id: 2,
        followed_id: 3
      ),
      Follower.create!(
        follower_id: 2,
        followed_id: 3
      )
    ])
  end

  it "renders a list of followers" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
  end
end
