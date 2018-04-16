require './chapter-6/convert_hash_syntax.rb'

RSpec.describe 'ConvertHashSyntax' do
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

    expect(convert_hash_syntax(old)).to eq fixed
  end
end
