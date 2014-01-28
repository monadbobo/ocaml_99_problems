let pack l =
  let rec pack_aux acc current = function
      [] -> acc
    | [x] -> (x::current)::acc
    | x::(y::tl) -> if x = y then pack_aux acc (x::current) (y::tl) else pack_aux ((x::current)::acc) [] (y::tl)
  in
  List.rev (pack_aux [] [] l)
