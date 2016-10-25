let rec shovel k ki r i =
  let kn = (ki + k) mod 10
  in
  if kn = 0 || kn = r then
    i
  else
    shovel k kn r (i + 1) ;;

Scanf.scanf "%i %i" (fun k r ->
  Printf.printf "%d\n" (shovel k 0 r 1));;
