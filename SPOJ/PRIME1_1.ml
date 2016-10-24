#load "str.cma";;
open Str

let rec check_n n max i =
  if i > max then true
  else if (n mod i) = 0 then false
  else check_n n max (i + 1)

let is_prime x =
  if x < 2 then false
  else check_n x (int_of_float (sqrt (float_of_int x))) 2

(* main  *)
let case_num = read_int () ;;

for case_n = 1 to case_num do
  let line = read_line () in
  let lst = split (regexp " ") line in
  let a = List.hd lst and b = List.hd (List.tl lst)
  in
  for i = (int_of_string a) to (int_of_string b) do
    if is_prime i then
      Printf.printf "%d\n" i
  done;
  print_newline ()
done


