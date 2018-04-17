require './chapter-6/convert_hash_syntax.rb'

RSpec.describe 'ConvertHashSyntax' do
  let(:old) do
    <<~TEXT
    {
      :name =>    'Alice',
      :age     =>20,
      :gender=>        :female
    }
    TEXT
  end

  let(:fixed) do
    <<~TEXT
    {
      name: 'Alice',
      age: 20,
      gender: :female
    }
    TEXT
  end

  it 'インデントを整え、シンボルに統一する' do

    expect(convert_hash_syntax(old)).to eq fixed
  end
end
