require 'rails_helper'

RSpec.describe ClicksController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Click. As you add validations to Click, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ClicksController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      click = Click.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Click" do
        expect {
          post :create, params: {click: valid_attributes}, session: valid_session
        }.to change(Click, :count).by(1)
      end

      it "redirects to the created click" do
        post :create, params: {click: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Click.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {click: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

end
