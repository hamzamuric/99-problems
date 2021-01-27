(* Eliminate consecutive duplicates of list elements. (medium) *)

let compress list = 
  let rec aux acc last = function
    | [] -> acc
    | x :: xs -> if x <> last then aux (x :: acc) x xs else aux acc x xs in
  match list with
    | [] -> []
    | h :: t -> List.rev (aux [h] h t);;

let result = compress ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;
List.iter print_endline result;;
