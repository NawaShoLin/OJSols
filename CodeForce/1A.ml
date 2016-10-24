let side n a =
  if n mod a = 0 then
    n / a
  else
    (n / a) + 1 ;;

let need_num n m a =
  Int64.mul
    (Int64.of_int (side n a))
    (Int64.of_int (side m a)) ;;

Scanf.scanf "%i %i %i" (fun n m a ->
    print_string (Int64.to_string (need_num n m a));
    print_newline () );;
