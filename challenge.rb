entries = File.open('input.txt').read.split.map(&:to_i)
target_sum = 2020

def sort_entries(entries, target_sum)
  # return the product of the two entries that sum to our target_sum
  # sort_entries([1,3,4,5,6], 5) ---> 5
  return nil if entries.empty?

  entries.each do |entry|
    compliment = entries.find { |num| num == (target_sum - entry) }
    return entry * compliment if compliment
  end

  nil
end

p sort_entries(entries, target_sum)
