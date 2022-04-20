let rec counter acc list =
  match list with
  | [] -> acc
  | h :: tail -> counter (acc + 1) tail

let length list =
  match list with
  | [] -> 0
  | ls -> counter 0 ls
  
