let until_stops (f : int -> int) (pred : int -> bool) (n : int) =
    let rec aux (x : int) acc =
        if pred x then acc
        else aux (f x) (x :: acc)
    in
    List.rev (aux n [])
