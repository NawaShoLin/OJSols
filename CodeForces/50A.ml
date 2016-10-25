let is_even = (fun x -> x mod 2 = 0)

let s_need e x =
  if is_even e then
    (e / 2) * x
  else
    (e / 2) * x + (x / 2) ;;

let need m n =
  if is_even m then
    s_need m n
  else
    s_need n m ;;

Scanf.scanf "%i %i" (fun m n ->
  Printf.printf "%d\n" (need m n)) ;;
