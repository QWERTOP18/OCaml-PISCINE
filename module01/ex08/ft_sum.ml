let ft_sum (f : int -> float) (lower : int) (upper : int) : float =
    if upper < lower then nan
    else
        let rec aux (i : int) (acc : float) =
            if i > upper then acc
            else aux (i + 1) (acc +. f i)
        in
        aux lower 0.

(* let test () =
    let result1 = ft_sum (fun i -> float_of_int (i * i)) 1 10 in
    Printf.printf "ft_sum (fun i -> float_of_int (i * i)) 1 10 = %f\n" result1;
    let result2 = ft_sum (fun i -> float_of_int i) 1 5 in
    Printf.printf "ft_sum (fun i -> float_of_int i) 1 5 = %f\n" result2;
    let result3 = ft_sum (fun i -> 1.0) 1 3 in
    Printf.printf "ft_sum (fun i -> 1.0) 1 3 = %f\n" result3;
    let result4 = ft_sum (fun i -> float_of_int i) 5 3 in
    Printf.printf "ft_sum (fun i -> float_of_int i) 5 3 = %f\n" result4

let () = test () *)
