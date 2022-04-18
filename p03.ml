let rec at k list =
  match list with
    [] -> None
  | h :: _ when k = 1 -> Some h
  | _ :: tail -> at (pred k) tail
