let rec last_two xs =
  match xs with
  | [] -> None
  | [x;y] -> Some (x, y)
  | h :: tl -> last_two tl
