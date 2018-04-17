require './chapter-7/gate.rb'
require './chapter-7/ticket.rb'

RSpec.describe 'GateTest' do
  let(:umeda) { Gate.new(:umeda) }
  let(:juso) { Gate.new(:juso) }
  let(:mikuni) { Gate.new(:mikuni) }

  it '150円の乗車券でumedaからjusoまで乗れることの確認' do
    ticket = Ticket.new(150)
    umeda.enter(ticket)
    expect(juso.exit(ticket)).to eq true
  end

  it '190円の乗車券でumedaからjusoまで乗れることの確認' do
    ticket = Ticket.new(190)
    umeda.enter(ticket)
    expect(juso.exit(ticket)).to eq true
  end

  it '150円の乗車券でumedaからmikuniまで乗れないことの確認' do
    ticket = Ticket.new(150)
    umeda.enter(ticket)
    expect(mikuni.exit(ticket)).to eq false
  end

  it '190円の乗車券でumedaからmikuniまで乗れることの確認' do
    ticket = Ticket.new(190)
    umeda.enter(ticket)
    expect(mikuni.exit(ticket)).to eq true
  end

  it '150円の乗車券でjusoからmikuniまで乗れることの確認' do
    ticket = Ticket.new(150)
    juso.enter(ticket)
    expect(mikuni.exit(ticket)).to eq true
  end

  it '190円の乗車券でjusoからmikuniまで乗れることの確認' do
    ticket = Ticket.new(190)
    juso.enter(ticket)
    expect(mikuni.exit(ticket)).to eq true
  end
end
