require "rails_helper"

RSpec.describe ClicksController, type: :routing do
  describe "routing" do

    it "root routes to clicks#index" do
      expect(:get => "/").to route_to("clicks#index")
    end

  end
end
