require './chapter-8/team.rb'

RSpec.describe Team do
  it 'freezeされたCOUNTRIESの値が正しいか' do
    expect(Team::COUNTRIES).to eq %w[Japan US India]
  end

  describe '.deep_freeze' do
    it 'COUNTRIES全体がfreezeされているか' do
      expect(Team::COUNTRIES.frozen?).to eq true
    end

    it 'COUNTRIESの各要素がfreezeされているか' do
      expect(Team::COUNTRIES.all?(&:frozen?)).to eq true
    end
  end
end
