let min_jump s =
  let len = String.length s in
  let rec jump i jumped m =
    if i = len then
      max m jumped
    else
      match s.[i] with
        'A' | 'E' | 'I' | 'O' | 'U' | 'Y' ->
        jump (i+1) 1 (max m jumped)
      | _ ->
        jump (i+1) (jumped+1) m
  in jump 0 1 0 ;;

let s = read_line ()
in Printf.printf "%d\n" (min_jump s) ;;
