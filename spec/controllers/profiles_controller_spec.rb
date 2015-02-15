require 'spec_helper'

RSpec.describe ProfilesController, type: :controller do
  describe "GET #show" do
    it "assigns the requested profile to @profile" do
      @profile = User.build_profile
      get :show, id: profile
      assigns(:profile).should eq(profile)
    end
  end
  
  
  describe "GET 'new'" do
    context "with user logged-in" do
      context "no profile" do
        before do
          get :new
        end
        it { expect(response.status).to eq(200) }
        it { expect(response).to redirect_to("/users/#{user.id}/new")}
      end
    end
  end
end