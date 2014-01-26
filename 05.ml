let rec rev_aux r = function
    [] -> r
  | hd :: tail -> rev_aux (hd::r) tail

let rev l = rev_aux [] l
