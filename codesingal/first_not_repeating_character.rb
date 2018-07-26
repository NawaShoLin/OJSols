def firstNotRepeatingCharacter(s)
  dict = {}
  s.split('').each do |c|
    dict[c] ||= 0
    dict[c] += 1
  end

  s.split('').find { |c| dict[c] == 1 } || '_'
end
