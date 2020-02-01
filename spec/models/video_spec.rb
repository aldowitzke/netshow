require 'rails_helper'

RSpec.describe Video, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:url) }
  end

  context "when video is valid" do
    let(:user) { build(:user) }
    let(:video) { create(:video, user: user) }

    it { expect(video.name).to eq('Video test') }
    it { expect(video.url).to eq('https://content.jwplatform.com/manifests/yp34SRmf.m3u8') }
    it { expect(video.user).to eq(user) }
    it { expect(video.url).to match(/(.m3u8)\z/) }
  end
end