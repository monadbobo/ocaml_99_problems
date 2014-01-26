let rec length_aux count = function
    [] -> count
  | hd :: tail -> length_aux (count + 1) tail

let rec length l = length_aux 0 l
