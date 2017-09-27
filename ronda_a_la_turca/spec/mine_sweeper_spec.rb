require 'mine_sweeper'

describe MineSweeper, '#init' do
  context 'with nothing' do
    it 'creates an instance' do
      mine_sweeper = MineSweeper.new
      expect(mine_sweeper).to be_a_kind_of(MineSweeper)
    end
  end
end
