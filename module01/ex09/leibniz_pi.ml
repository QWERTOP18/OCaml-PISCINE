let leibniz_pi (delta : float) : int =
    if delta < 0. then -1
    else
        let pi_ref = 4. *. atan 1. in
        let rec aux (i : int) (sum : float) (prev_pi : float) =
            let term = (if i mod 2 = 0 then 1. else -1.) /. float_of_int (2 * i + 1) in
            let new_sum = sum +. term in
            let computed_pi = 4. *. new_sum in
            let current_delta = abs_float (pi_ref -. computed_pi) in
            if current_delta <= delta then i + 1
            else aux (i + 1) new_sum computed_pi
        in
        aux 0 0. 0.

(* let test () =
    let result1 = leibniz_pi 0.1 in
    Printf.printf "leibniz_pi 0.1 = %d\n" result1;
    let result2 = leibniz_pi 0.01 in
    Printf.printf "leibniz_pi 0.01 = %d\n" result2;
    let result3 = leibniz_pi (-1.0) in
    Printf.printf "leibniz_pi (-1.0) = %d\n" result3;
    let result4 = leibniz_pi 0.001 in
    Printf.printf "leibniz_pi 0.001 = %d\n" result4

let () = test () *)
