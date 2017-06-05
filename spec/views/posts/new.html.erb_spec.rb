require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      :rationale => "MyText",
      :user => ""
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "textarea#post_rationale[name=?]", "post[rationale]"

      assert_select "input#post_user[name=?]", "post[user]"
    end
  end
end
