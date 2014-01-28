type 'a node =
  | One of 'a
  | Many of 'a node list;;

let flatten n =
  let rec flatten_aux re n1=
    match n1 with
    | [] -> re
    | One x :: tl -> flatten_aux (x::re) tl
    | Many x :: tl -> flatten_aux (flatten_aux re x) tl
  in
  List.rev (flatten_aux [] n)
