let is_palindrome list =
  match list with
  | [] -> true
  | ls -> List.rev ls = list
