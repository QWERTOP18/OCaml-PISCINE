open Repeat_x

let repeat_string ?(str : string = "x") n =
    if n < 0 then repeat_x n
    else
      let rec aux (i : int) = if i = 0 then "" else str ^ aux (i - 1) in
      aux n
