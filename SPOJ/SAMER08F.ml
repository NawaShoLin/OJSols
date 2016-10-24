let table = Array.make 102 0;;
table.(1) <- 1;;
for i = 2 to 100 do
  let n = table.(i - 1) + (i * i) in table.(i) <- n
done

let rec main () =
  let n = read_int () in
  if n <> 0 then begin
    Printf.printf "%d\n" table.(n);
    main ()
  end ;;

main () ;;
