(* Pack consecutive duplicates of list elements into sublists. (medium) *)

(* In aux function, semi is a list which will be element of the result list. *)
(* It accumulates same consecutive elements and when function reaches some different element,
   it prepends semi to the result list. *)

let pack list =
  let rec aux acc semi last = function
    | [] -> semi :: acc
    | x :: xs -> 
      if x <> last 
      then aux (semi :: acc) [x] x xs 
      else aux acc (x :: semi) x xs in
  match list with
    | [] -> []
    | h :: t -> List.rev (aux [] [h] h t);;


let result = pack ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"d";"e";"e";"e";"e"];;
let expected = [["a"; "a"; "a"; "a"]; ["b"]; ["c"; "c"]; ["a"; "a"]; ["d"; "d"];
 ["e"; "e"; "e"; "e"]];;

print_endline (if result = expected then "YES" else "NO");;
