(* Find the number of elements of a list. (easy) *)

let rec length list =
  match list with
    | [] -> 0
    | _ :: rest -> 1 + length rest;;


let list = ["a"; "b"; "c"];;
print_int (length list);;
print_newline ();;
