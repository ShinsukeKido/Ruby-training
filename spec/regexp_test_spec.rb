require './chapter-9/exception.rb'
RSpec.describe RegexpTest do
  let(:regexp_test) { RegexpTest.new }
  before { regexp_test.stub(:input_string).and_return('123-456-789') }

  describe '#regexp_execute' do
    context '文字列と正規表現がマッチした時' do
      before { regexp_test.stub(:input_regexp).and_return(/[1-6]+/) }
      it 'Matched: の後にマッチした文字列がカンマ区切りで表示される' do
        expect(regexp_test.regexp_execute).to eq 'Matched: 123, 456'
      end
    end

    context '文字列と正規表現がマッチしなかった時' do
      before { regexp_test.stub(:input_regexp).and_return(/[a-c]+/) }
      it 'Nothing matchedと表示される' do
        expect(regexp_test.regexp_execute).to eq 'Nothing matched'
      end
    end

    context '正規表現として無効な値が入力された時' do
      before { regexp_test.stub(:input_regexp).and_return('Error') }
      it 'Errorと表示される' do
        expect(regexp_test.regexp_execute).to eq 'RegexpError'
      end
    end
  end
end
