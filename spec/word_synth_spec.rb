require './chapter-10/effects.rb'
require './chapter-10/word_synth.rb'

RSpec.describe WordSynth do
  subject { synth.play('Ruby is fun!') }

  let(:synth) { WordSynth.new }

  context 'synthのインスタンス変数が空の時' do
    it 'playメソッドにより、引数の文字列がそのまま返る' do
      is_expected.to eq 'Ruby is fun!'
    end
  end

  context 'synthのインスタンス変数にreverseメソッドによって作成されたラムダが格納された時' do
    before do
      synth.add_effect(Effects.reverse)
    end
    it 'playメソッドにより、文字列"Ruby is fun!"が文字列"ybuR si !nuf"に変換される' do
      is_expected.to eq 'ybuR si !nuf'
    end
  end

  context 'synthのインスタンス変数にecho(2)メソッド、loud(3)メソッド、reverseメソッドによって作成されたラムダが順番に格納された時' do
    before do
      synth.add_effect(Effects.echo(2))
      synth.add_effect(Effects.loud(3))
      synth.add_effect(Effects.reverse)
    end
    it 'playメソッドにより、文字列"Ruby is fun!"が文字列"!!!YYBBUURR !!!SSII !!!!!NNUUFF"に変換される' do
      is_expected.to eq '!!!YYBBUURR !!!SSII !!!!!NNUUFF'
    end
  end
end
