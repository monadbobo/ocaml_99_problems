let rec last_two l =
  match l with
  |[] | [_] -> None
  |[l1;l2] -> Some (l1,l2)
  | _ :: tl -> last_two tl
