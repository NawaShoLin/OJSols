open Printf

let rec pupu n =
  let i = read_int ()
  in
  if i = 42 then
    print_newline ()
  else begin
    printf "%d" i;
    print_newline () ;
    pupu n ;
  end ;;

pupu 0 ;;





      
