require './chapter-9/exception.rb'

RSpec.describe '#match' do
  it '文字列と正規表現がマッチした時に正しく結果が表示されること' do
    expect(match('123-456-789', /[1-6]+/)).to eq 'Matched: 123, 456'
  end

  it '文字列と正規表現がマッチしなかった時に正しく結果が表示されること' do
    expect(match('abc-efg-hij', /[1-6]+/)).to eq 'Nothing matched'
  end
end
