let trans = function
  | s when (String.length s) <= 10 -> s
  | s -> let head = String.get s 0
    and len = String.length s in
    let tail = String.get s (len - 1)
    in
    Printf.sprintf "%c%d%c" head (len - 2) tail;;

let case_num = read_int ();;
for i = 1 to case_num do
  let s = read_line ()
  in Printf.printf "%s\n" (trans s)
done ;;
