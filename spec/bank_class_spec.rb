require './chapter-8/team.rb'
require './chapter-8/bank.rb'

RSpec.describe 'Bankクラスのハッシュ定数CURRENCIESの全体と各要素をfreezeさせる' do
  it 'freezeされたCURRENCIESの値が正しいか' do
    expect(Bank::CURRENCIES).to eq ({'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'})
  end

  it 'CURRENCIES全体がfreezeされているか' do
    expect(Bank::CURRENCIES.frozen?).to eq true
  end

  it 'CURRENCIESの各要素がfreezeされているか' do
    expect(Bank::CURRENCIES.all?{ |key, value| key.frozen? && value.frozen? }).to eq true
  end
end
