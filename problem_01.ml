(* Write a function last : 'a list -> 'a option that returns the last element of a list. (easy) *)

let rec last list =
  match list with
    | [] -> None
    | [x] -> Some x
    | _x :: xs -> last xs;;

let list = ["a"; "b"; "c"; "d"];;
let last_element = last list;;

match last_element with
  | None -> print_endline "The list was empty"
  | Some x -> print_endline ("Last element is " ^ x);;
