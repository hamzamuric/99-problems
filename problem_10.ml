(* Run-length encoding of a list. (easy) *)

let encode (list: string list) =
  let rec aux acc last num = function
    | [] -> (num, last) :: acc
    | x :: xs ->
      if x <> last
      then aux ((num, last) :: acc) x 1 xs
      else aux acc x (num + 1) xs in
  match list with
    | [] -> []
    | h :: t -> List.rev (aux [] h 1 t);;

let result = encode ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;
List.iter (fun (i, s) -> print_int i; print_string (" " ^ s); print_newline ()) result;;
