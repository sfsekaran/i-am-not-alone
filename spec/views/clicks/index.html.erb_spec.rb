require 'rails_helper'

RSpec.describe "clicks/index", type: :view do
  before(:each) do
    assign(:recent, [
      Click.create!(
        :city => "Los Angeles",
        :state => "State",
        :country => "Country",
        :user_agent => "User Agent"
      ),
      Click.create!(
        :city => "Dallas",
        :state => "State",
        :country => "Country",
        :user_agent => "User Agent"
      )
    ])
    assign(:count, 10)
  end

  it "renders a list of clicks" do
    render

    expect(rendered).to match /I'm anxious in Dallas/
    expect(rendered).to match /I'm anxious in Los Angeles/
  end

  it "renders a count of clicks" do
    render

    expect(rendered).to match /There are 10 anxious people near you./
  end
end
