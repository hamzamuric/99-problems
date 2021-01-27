(* Find out whether a list is a palindrome. (easy) *)

(* Short version *)
let is_pal list =
  list = List.rev list;;

(* or better implementation, comparing only first halves of the lists *)
let is_palindrome list =
  let reversed = List.rev list in
  let half_len = List.length list / 2 in
  let rec same list1 list2 len =
    if len = 0 then true 
    else match (list1, list2) with
      | ([], []) -> true
      | (x :: xs, y :: ys) -> if x <> y then false else same xs ys (len - 1)
      | _ -> false in
  same list reversed half_len;;

let is_pal = is_palindrome ["x"; "a"; "m"; "a"; "x"];;
if is_pal
then print_endline "List is palindrome"
else print_endline "List is not palindrome";;
