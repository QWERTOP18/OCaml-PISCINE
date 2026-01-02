let bazinga (n : int) =
    if n < 0 then 0
    else
        let rec aux (i : int) acc =
            if i <= 0 then acc
            else aux (i - 1) (acc + (i * i) - i)
        in
        aux n 0

(* let test () =
    Printf.printf "bazinga (-1) = %d\n" (bazinga (-1));
    Printf.printf "bazinga 0 = %d\n" (bazinga 0);
    Printf.printf "bazinga 1 = %d\n" (bazinga 1);
    Printf.printf "bazinga 5 = %d\n" (bazinga 5);
    Printf.printf "bazinga 10 = %d\n" (bazinga 10)

let () = test () *)
