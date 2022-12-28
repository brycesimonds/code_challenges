def find_it(seq)
  hash = seq.each_with_object(Hash.new(0)) do |num, hash|
    hash[num] += 1
  end 
  answer = []
  hash.each do |key, value|
    if value % 2 != 0
      answer << key
    end 
  end
  answer.first
end