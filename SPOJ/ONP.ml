let str_to_l s =
  let rec exp i lst =
    if i < 0 then
      lst
    else
      exp (i - 1) (s.[i] :: lst)
  in
  exp ((String.length s) - 1) []

let toPostfix lst =
  let stack = Stack.create ()
  and q = Queue.create () in
  let rec trans inf =
    match inf with
    | x :: xs -> begin (match x with
      | 'a' .. 'z' -> Queue.add x q
      | ')' -> (
          while (Stack.top stack) <> '(' do
            let t = Stack.pop stack
            in Queue.add t q
          done;
          Stack.pop stack;
          ())
      | _ -> Stack.push x stack
      ); trans xs end
    | _ -> while not (Stack.is_empty stack) do
        Queue.add (Stack.pop stack) q
      done
  in
  (trans lst; q)

let print_chq q =
  while not (Queue.is_empty q) do
    Printf.printf "%c" (Queue.take q)
  done;
  print_newline ()

let case_num = read_int () ;;
for i = 1 to case_num do
  let line = read_line () in
  let chars = str_to_l line
  in print_chq (toPostfix chars)
done
