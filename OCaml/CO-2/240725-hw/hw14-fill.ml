(* Polymorphic Tree for Binary Operations
Q14: Define a polymorphic type tree representing a binary tree. Write a function evaluate_tree that evaluates the tree using bitwise AND for Node.
*)

type 'a tree = Leaf of 'a | Node of 'a * 'a tree * 'a tree;;

let rec evaluate_tree = function
  | Leaf x -> (* BLANK *)
  | Node (op, left, right) -> (* BLANK *) (* BLANK *) (* BLANK *);;

(* Tests *)
let () =
  let tree = Node (0, Leaf 5, Leaf 3) in
  assert (evaluate_tree tree = 1);  (* 5: 0101, 3: 0011, Result: 0001 *)
  Printf.printf "Evaluate_tree tests passed.\n";;