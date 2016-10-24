let cal_lv i =
  let c = (float_of_int (i * 2)) in
  let a = 2.0 *. c
  and b = 1.0 +. 4.0 *. c in
  let lv = a /. ((sqrt b) -. 1.0) in
  int_of_float (lv -. 0.000000001) ;;

let num_at_lv lv =
  (lv * (lv - 1)) / 2 ;;

let print_ans x =
  let lv = cal_lv x in
  let num = num_at_lv lv in
  let a = x - num in
  let b = lv + 1 - a
  in if lv mod 2 = 0 then
    Printf.printf "TERM %d IS %d/%d\n" x a b
  else
    Printf.printf "TERM %d IS %d/%d\n" x b a ;;

let case_num = read_int ();;
let rec main i =
  if i < case_num then (
    print_ans (read_int ()) ;
    main (i + 1) ) in main 0;;
