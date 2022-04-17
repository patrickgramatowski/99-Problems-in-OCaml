(* Write a function last : 'a list -> 'a option that returns the last element of a list. *)

let last xs =
  match List.rev xs with
  | [] -> None
  | h::tail -> Some h
