require 'rails_helper'

RSpec.describe ProfilesController, type: :controller do
  let!(:user) { FactoryGirl.create(:user) }
  let!(:profile) { FactoryGirl.build(:profile, user: user) }
  describe "GET #show" do
    before { get :show, user_id: user.id }
    it { expect(response).to be_false }
    
  end

  # describe "GET 'new'" do
    # context "with user logged-in" do
      # context "no profile" do
        # before do
          # get :new
        # end
        # it { expect(response.status).to eq(200) }
        # it { expect(response).to redirect_to("/users/#{user.id}/new")}
      # end
    # end
  # end
end