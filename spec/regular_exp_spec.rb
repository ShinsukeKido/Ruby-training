require './chapter-6/regular_exp.rb'

RSpec.describe 'RegularExp' do
  it 'adjusts indent and symbol to regular expression' do
    old = <<~TEXT
      {
        :name =>    'Alice',
        :age     =>20,
        :gender=>        :female
      }
    TEXT

    fixed = <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT

    expect(regular_exp(old)).to eq fixed
  end
end
