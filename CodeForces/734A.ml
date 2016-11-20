let char_count s len c =
  let rec cc i sum =
    if i = len then
      sum
    else
      let n = if s.[i] = c then 1 else 0 in
      cc (i + 1) (sum + n)
  in cc 0 0

let n = read_int () ;;
let s = read_line () ;;
let a = char_count s n 'A'
and d = char_count s n 'D'
in
if a = d then
  print_string "Friendship\n"
else if a > d then
  print_string "Anton\n"
else
  print_string "Danik\n"
;;
