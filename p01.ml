let last(xs: 'a list): 'a option =
  match List.rev xs with
  | [] -> None
  | h :: _ -> Some h
  
(* w/o List.rev *)
let rec last_no_rev(xs: 'a list): 'a option =
  match xs with
  | [] -> None
  | [x] -> Some x
  | _ :: tail -> last_no_rev tail

