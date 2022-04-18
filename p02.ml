let rec last_two (xs: 'a list): ('a * 'a) option =
  match xs with
  | [] -> None (* No match for [_] but it's still working as expected, why? -> '[] | [_] -> None' ---> explained here: 
                  https://github.com/patrickgramatowski/til/blob/master/ocaml/ocaml.ml *)
  | [x;y] -> Some (x, y)
  | _ :: tail -> last_two tail
  
  
(* Refactored version - syntactic sugar -> https://www2.lib.uchicago.edu/keith/ocaml-class/pattern-matching.html *)
let rec last_two_refactored = function
    [] -> None
  | [x;y] -> Some (x, y)
  | _ :: tail -> last_two_refactored tail
