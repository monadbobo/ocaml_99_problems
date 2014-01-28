let compress l =
  let rec compress_aux acc = function
      [] -> acc
    | [x] -> compress_aux (x::acc) []
    | x::(y::tl) -> if x = y then compress_aux acc (y::tl) else compress_aux (x::acc) (y::tl)
  in
  List.rev (compress_aux [] l)
