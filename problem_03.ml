(* Find the k'th element of a list. (easy) *)

let rec at k list =
  match list with
    | [] -> None
    | x :: xs -> if k = 1 then Some x else at (k - 1) xs;;


let list = ["a"; "b"; "c"; "d"; "e"];;
let kth_element = at 3 list;;

match kth_element with
  | None -> print_endline "The list was empty"
  | Some x -> print_endline ("Third element is " ^ x);;
