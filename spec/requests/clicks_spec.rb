require 'rails_helper'

RSpec.describe "Clicks", type: :request do
  describe "GET /clicks" do
    it "works! (now write some real specs)" do
      get clicks_path
      expect(response).to have_http_status(200)
    end
  end
end
