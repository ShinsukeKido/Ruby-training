require './chapter-8/team.rb'
require './chapter-8/bank.rb'

RSpec.describe 'Teamクラスの配列定数COUNTRIESの全体と各要素をfreezeさせる' do
  it 'freezeされたCOUNTRIESの値が正しいか' do
    expect(Team::COUNTRIES).to eq ['Japan', 'US', 'India']
  end

  it 'COUNTRIES全体がfreezeされているか' do
    expect(Team::COUNTRIES.frozen?).to eq true
  end

  it 'COUNTRIESの各要素がfreezeされているか' do
    expect(Team::COUNTRIES.all?{ |country| country.frozen? }).to eq true
  end
end

