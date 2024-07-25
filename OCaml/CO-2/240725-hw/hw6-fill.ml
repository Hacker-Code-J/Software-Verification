(* Nested Pattern Matching
Q6: Define a polymorphic type tree representing a binary tree. Write a function is_leaf that checks if a tree node is a leaf.
*)

type 'a tree = Leaf | Node of 'a * 'a tree * 'a tree;;

let is_leaf = function
  | Leaf -> (* BLANK *)
  | Node _ -> (* BLANK *);;

(* Tests *)
let () =
  assert (is_leaf Leaf = true);
  assert (is_leaf (Node (1, Leaf, Leaf)) = false);
  Printf.printf "Is_leaf tests passed.\n";;
