let encode l =
  let rec encode_aux acc current = function
      [] -> acc
    | [x] -> (current+1, x)::acc
    | x::(y::tl) -> if x = y then encode_aux acc (current+1) (y::tl) else encode_aux ((current+1, x)::acc) 0 (y::tl)
  in
  List.rev (encode_aux [] 0 l)
