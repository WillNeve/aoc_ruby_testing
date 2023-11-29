require_relative '../challenge'

RSpec.describe 'challenge', '#sort_entries' do
  it 'should two arguments' do
    expect { sort_entries }.to raise_error(ArgumentError)
    expect { sort_entries(1) }.to raise_error(ArgumentError)
  end

  context 'it should return nil' do
    it 'if passed no entries' do
      expect(sort_entries([], 5).class).to eq(NilClass)
    end

    it 'if no complimenting numbers to reach sum are found' do
      expect(sort_entries([3, 5, 3], 5).class).to eq(NilClass)
    end
  end

  it 'should find the correct product from the two numbers that sum to target' do
    target_num = 6
    entries = [3, 5, 3]
    expect(sort_entries(entries, target_num)).to eq(9)
  end
end
