require './chapter-9/exception.rb'
RSpec.describe RegexpTest do
  let(:regexp_test) { RegexpTest.new }

  describe '#regexp_execute' do
    context '文字列と正規表現がマッチした時' do
      before do
        regexp_test.stub(:input_string).and_return('123-456-789')
        regexp_test.stub(:input_regexp).and_return(/[1-6]+/)
      end
      it 'Matched: の後にマッチした文字列がカンマ区切りで表示される' do
        expect(regexp_test.regexp_execute).to eq 'Matched: 123, 456'
      end
    end

    context '文字列と正規表現がマッチしなかった時' do
      before do
        regexp_test.stub(:input_string).and_return('123-456-789')
        regexp_test.stub(:input_regexp).and_return(/[a-c]+/)
      end
      it 'Nothing matchedと表示される' do
        expect(regexp_test.regexp_execute).to eq 'Nothing matched'
      end
    end

    context '文字列の入力でエラーが発生した時' do
      before do
        regexp_test.stub(:input_string).and_return(nil)
      end
      it 'input string errorと表示される' do
        expect(regexp_test.regexp_execute).to eq 'input string error'
      end
    end

    context '正規表現の入力でエラーが発生した時' do
      before do
        regexp_test.stub(:input_string).and_return('123-456-789')
        regexp_test.stub(:input_regexp).and_return(nil)
      end
      it 'input regexp errorと表示される' do
        expect(regexp_test.regexp_execute).to eq 'input regexp error'
      end
    end
  end

  describe '#match_text_to_regexp' do
    context '文字列と正規表現がマッチした時' do
      it 'Matched: の後にマッチした文字列がカンマ区切りで表示される' do
        expect(regexp_test.match_text_to_regexp('123-456-789', /[1-6]+/)).to eq 'Matched: 123, 456'
      end
    end

    context '文字列と正規表現がマッチしなかった時' do
      it 'Nothing matchedと表示される' do
        expect(regexp_test.match_text_to_regexp('abc-efg-hij', /[1-6]+/)).to eq 'Nothing matched'
      end
    end
  end
end
