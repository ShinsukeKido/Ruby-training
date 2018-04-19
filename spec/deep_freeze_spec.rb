require './chapter-8/team.rb'
require './chapter-8/bank.rb'

RSpec.describe '配列、またはハッシュの要素と全体をfreezeさせる' do
  context '配列をfreezeさせる' do
    it 'freezeされた配列の値が正しいか' do
      expect(Team::COUNTRIES).to eq ['Japan', 'US', 'India']
    end

    it '配列全体がfreezeされているか' do
      expect(Team::COUNTRIES.frozen?).to eq true
    end

    it '配列の各要素がfreezeされているか' do
      expect(Team::COUNTRIES.all?{ |country| country.frozen? }).to eq true
    end
  end

  context 'ハッシュをfreezeさせる' do
    it 'freezeされたハッシュの値が正しいか' do
      expect(Bank::CURRENCIES).to eq ({'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'})
    end

    it 'ハッシュ全体がfreezeされているか' do
      expect(Bank::CURRENCIES.frozen?).to eq true
    end

    it 'ハッシュの各要素がfreezeされているか' do
      expect(Bank::CURRENCIES.all?{ |key, value| key.frozen? && value.frozen? }).to eq true
    end
  end
end
