require 'rails_helper'

RSpec.describe "clicks/edit", type: :view do
  before(:each) do
    @click = assign(:click, Click.create!(
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :user_agent => "MyString"
    ))
  end

  it "renders the edit click form" do
    render

    assert_select "form[action=?][method=?]", click_path(@click), "post" do

      assert_select "input[name=?]", "click[city]"

      assert_select "input[name=?]", "click[state]"

      assert_select "input[name=?]", "click[country]"

      assert_select "input[name=?]", "click[user_agent]"
    end
  end
end
