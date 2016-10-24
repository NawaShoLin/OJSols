let ans = function
  | 2 -> "NO\n"
  | x when x mod 2 = 0 -> "YES\n"
  | _ -> "NO\n" ;;

let x = read_int ()
in print_string (ans x) ;;
