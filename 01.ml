let rec last l =
  match l with
  | [] -> None
  | [x] -> Some x
  | hd :: tl -> last tl
