require './chapter-7/gate.rb'

RSpec.describe 'GateTest' do
  let(:umeda) { Gate.new(:umeda) }
  let(:juso) { Gate.new(:juso) }
  let(:mikuni) { Gate.new(:mikuni) }

  it 'tests umeda to juso by 150 ticket' do
    ticket = Ticket.new(150)
    umeda.enter(ticket)
    expect(juso.exit(ticket)).to eq true
  end

  it 'tests umeda to juso by 190 ticket' do
    ticket = Ticket.new(190)
    umeda.enter(ticket)
    expect(juso.exit(ticket)).to eq true
  end

  it 'tests umeda to mikuni by 190 ticket' do
    ticket = Ticket.new(150)
    umeda.enter(ticket)
    expect(mikuni.exit(ticket)).to eq false
  end

  it 'tests umeda to mikuni by 190 ticket' do
    ticket = Ticket.new(190)
    umeda.enter(ticket)
    expect(mikuni.exit(ticket)).to eq true
  end

  it 'tests juso to mikuni by 190 ticket' do
    ticket = Ticket.new(150)
    juso.enter(ticket)
    expect(mikuni.exit(ticket)).to eq true
  end

  it 'tests juso to mikuni by 190 ticket' do
    ticket = Ticket.new(190)
    juso.enter(ticket)
    expect(mikuni.exit(ticket)).to eq true
  end
end
