let ok x =
  let an = 180 - x in
  let n = 360 / an
  in an * n = 360 ;;

let test_num = read_int()
in
for i = 1 to test_num do
  let x = read_int()
  in
  if (ok x) then
    Printf.printf "YES\n"
  else
    Printf.printf "NO\n"
done
