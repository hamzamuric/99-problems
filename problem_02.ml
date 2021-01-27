(* Find the last but one (last and penultimate) elements of a list. (easy) *)

let rec last_penultimate list =
  match list with
    | [] -> None
    | [_] -> None
    | x :: y :: [] -> Some (x, y)
    | _ :: rest -> last_penultimate rest;;


let list = ["a"; "b"; "c"; "d"];;
let last_two_elements = last_penultimate list;;

match last_two_elements with
  | None -> print_endline "The list was empty"
  | Some (x, y) -> print_endline ("Last two elements are " ^ x ^ " and " ^ y);;
