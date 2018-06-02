require 'rails_helper'

RSpec.describe "clicks/new", type: :view do
  before(:each) do
    assign(:click, Click.new(
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :user_agent => "MyString"
    ))
  end

  it "renders new click form" do
    render

    assert_select "form[action=?][method=?]", clicks_path, "post" do

      assert_select "input[name=?]", "click[city]"

      assert_select "input[name=?]", "click[state]"

      assert_select "input[name=?]", "click[country]"

      assert_select "input[name=?]", "click[user_agent]"
    end
  end
end
