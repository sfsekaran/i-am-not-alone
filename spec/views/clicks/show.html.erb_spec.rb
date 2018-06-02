require 'rails_helper'

RSpec.describe "clicks/show", type: :view do
  before(:each) do
    @click = assign(:click, Click.create!(
      :city => "City",
      :state => "State",
      :country => "Country",
      :user_agent => "User Agent"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/User Agent/)
  end
end
