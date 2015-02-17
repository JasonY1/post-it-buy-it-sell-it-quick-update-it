require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let!(:user) { FactoryGirl.create(:user) }
  let!(:profile) { FactoryGirl.build(:profile, user: user) }

  describe "GET #show" do
    describe "when not logged in" do
      before { get :show, id: user.id }
      it { expect(response).to redirect_to('/register/sign_in') }
    end
    
    describe "when logged-in" do
      login_user
      before { get :show, id: user.id }
      it { expect(response).to be_success }
    end
  end
end