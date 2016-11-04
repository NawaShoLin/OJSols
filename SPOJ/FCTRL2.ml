open Big_int

let imulb i b =
  let a = big_int_of_int i
  in mult_big_int a b ;;

let rec factorial_r i n p =
  match i with
    a when a = n -> imulb i p
  | _ -> factorial_r (i + 1) n (imulb i  p);;

let factorial n = factorial_r 1 n unit_big_int ;;

let t = read_int () ;;

for i = 1 to t do
  let n = read_int ()
  in
  Printf.printf "%s\n" (string_of_big_int (factorial n))
done
