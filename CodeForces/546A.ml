let need_money k w =
  k * ((1 + w) * w) / 2 ;;

let need_borrow k n w =
  let ne = (need_money k w) - n
  in
  if ne > 0 then ne else 0 ;;

Scanf.scanf "%i %i %i" (fun k n w ->
    Printf.printf "%d\n" (need_borrow k n w));;
