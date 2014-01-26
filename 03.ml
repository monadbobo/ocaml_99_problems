let rec at i = function
    [] -> None
  | hd :: tl when i == 1 -> Some hd
  | hd :: tl -> at (i - 1) tl
