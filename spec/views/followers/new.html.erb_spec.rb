require 'rails_helper'

RSpec.describe "followers/new", type: :view do
  before(:each) do
    assign(:follower, Follower.new(
      follower_id: 1,
      followed_id: 1
    ))
  end

  it "renders new follower form" do
    render

    assert_select "form[action=?][method=?]", followers_path, "post" do

      assert_select "input[name=?]", "follower[follower_id]"

      assert_select "input[name=?]", "follower[followed_id]"
    end
  end
end
