let weird_stuff (n : int) =
    if n < 0 then 0
    else
        let rec aux (i : int) acc =
            if i <= 0 then acc
            else if i mod 2 = 0 then aux (i - 1) (acc + i * 2)
            else aux (i - 1) (acc - i)
        in
        aux n 0

(* let test () =
    Printf.printf "weird_stuff (-1) = %d\n" (weird_stuff (-1));
    Printf.printf "weird_stuff 0 = %d\n" (weird_stuff 0);
    Printf.printf "weird_stuff 1 = %d\n" (weird_stuff 1);
    Printf.printf "weird_stuff 5 = %d\n" (weird_stuff 5);
    Printf.printf "weird_stuff 10 = %d\n" (weird_stuff 10)

let () = test () *)
