require 'spec_helper'

RSpec.describe Profiles, type: :model do
  let(:user) { create(:user) }
  describe "creation" do
    describe "should be associated with user" do
      before do
        @user    = create(:user)
        @profile = create(:profile)
        @user.profile << @profile
      end
      it { expect(@user.profile).to be_an ActiveRecord::Association::CollectionProxy }
      it { expect(@user.profile.first).to eq @profile }
    end
  end
end
