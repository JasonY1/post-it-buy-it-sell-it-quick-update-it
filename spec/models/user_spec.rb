require 'spec_helper'

describe User do
  let(:user) { FactoryGirl.create(:user) }
  describe "creation" do
    describe "should be associated with user_id" do
      before do
        @profile = FactoryGirl.create(:profile)
        user.profile = @profile
      end
      it { expect(user.profile).to eq @profile }
      it { expect(user.profile.user_id).to eq @profile.user_id }
    end
  end
end