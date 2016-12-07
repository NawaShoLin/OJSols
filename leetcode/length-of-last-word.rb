def length_of_last_word(s)
    tail = s.split(' ').last
    tail ? tail.length : 0
end
