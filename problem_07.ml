(* Flatten a nested list structure. (medium) *)

(* There is no nested list type in OCaml, so we need to define one
   first. A node of a nested list is either an element, or a list of
   nodes. *)
type 'a node =
  | One of 'a
  | Many of 'a node list;;

let rec flatten list =
  match list with
    | [] -> []
    | x :: xs ->
      match x with
        | One e -> e :: flatten xs
        | Many elems -> flatten elems @ flatten xs;;

let result = flatten [One "a"; Many [One "b"; Many [One "c"; One "d"]; One "e"]];;
List.iter print_endline result;;
