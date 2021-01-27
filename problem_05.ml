(* Reverse a list. (easy) *)

let rec rev list =
  match list with
    | [] -> []
    | x :: xs -> (rev xs) @ [x];;

["a"; "b"; "c"]
  |> rev
  |> List.iter print_endline;;
