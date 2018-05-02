require './chapter-10/effects.rb'

RSpec.describe Effects do
  subject { effect.call('Ruby is fun!') }

  describe '.reverse' do
    let(:effect) { Effects.reverse }
    it 'reverseメソッドにより作成されたラムダが、与えられた文字列の各単語の順序を逆にする' do
      is_expected.to eq 'ybuR si !nuf'
    end
  end

  describe '.echo' do
    context 'echoメソッドの引数が2の時' do
      let(:effect) { Effects.echo(2) }
      it 'echo(2)メソッドにより作成されたラムダが、与えられた文字列の各文字を2回繰り返す' do
        is_expected.to eq 'RRuubbyy iiss ffuunn!!'
      end
    end

    context 'echoメソッドの引数が3の時' do
      let(:effect) { Effects.echo(3) }
      it 'echo(3)メソッドにより作成されたラムダが、与えられた文字列の各文字を3回繰り返す' do
        is_expected.to eq 'RRRuuubbbyyy iiisss fffuuunnn!!!'
      end
    end
  end

  describe '.loud' do
    context 'loudメソッドの引数が2の時' do
      let(:effect) { Effects.loud(2) }
      it 'loud(2)メソッドにより作成されたラムダが、与えられた文字列を大文字にし、末尾に!を2つ追加する' do
        is_expected.to eq 'RUBY!! IS!! FUN!!!'
      end
    end

    context 'loudメソッドの引数が3の時' do
      let(:effect) { Effects.loud(3) }
      it 'loud(3)メソッドにより作成されたラムダが、与えられた文字列を大文字にし、末尾に!を3つ追加する' do
        is_expected.to eq 'RUBY!!! IS!!! FUN!!!!'
      end
    end
  end
end
