let fibonacci (n : int) =
    if n < 0 then -1
    else if n = 0 then 0
    else if n = 1 then 1
    else
        let rec aux (i : int) (prev : int) (curr : int) =
            if i = n then curr
            else aux (i + 1) curr (prev + curr)
        in
        aux 1 0 1

(* let test () =
    Printf.printf "fibonacci (-1) = %d\n" (fibonacci (-1));
    Printf.printf "fibonacci 0 = %d\n" (fibonacci 0);
    Printf.printf "fibonacci 1 = %d\n" (fibonacci 1);
    Printf.printf "fibonacci 2 = %d\n" (fibonacci 2);
    Printf.printf "fibonacci 5 = %d\n" (fibonacci 5);
    Printf.printf "fibonacci 10 = %d\n" (fibonacci 10)

let () = test () *)
