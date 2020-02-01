require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
  end

  context "when user is valid" do
    let(:user) { create(:user) }

    it { expect(user.email).to eq('test@netshow.me') }
    it { expect(user.password).to eq('123123') }
  end
end