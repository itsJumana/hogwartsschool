require 'rails_helper'

RSpec.describe "followers/edit", type: :view do
  let(:follower) {
    Follower.create!(
      follower_id: 1,
      followed_id: 1
    )
  }

  before(:each) do
    assign(:follower, follower)
  end

  it "renders the edit follower form" do
    render

    assert_select "form[action=?][method=?]", follower_path(follower), "post" do

      assert_select "input[name=?]", "follower[follower_id]"

      assert_select "input[name=?]", "follower[followed_id]"
    end
  end
end
