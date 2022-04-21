let reverse list =
  let rec rev_sort ls acc =
    match ls with
      [] -> acc
    | f :: s :: rest -> rev_sort rest (List.append (List.append [s] [f]) acc)
    | f :: rest -> rev_sort rest (List.append [f] acc)
  in rev_sort list []


(* Refactored *)
let reverse list =
  let rec rev_sort ls acc =
    match ls with
      [] -> acc
    | h :: tail -> rev_sort tail (h :: acc)
  in rev_sort list []
