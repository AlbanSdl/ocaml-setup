(* Debug pre-req *)
let rec print_list = function
[] -> ()
| t::q -> print_int t ; print_string " " ; print_list q;;

(* Ex1 *)
let rec longueur l = match l with
[] -> 0
| t::q -> 1 + longueur q;;
print_string "Ex1: Longueur de la liste: ";;
print_int (longueur [0;0;0;0;0]);;

(* Ex2 *)
let rec prod l = match l with
[] -> 1
| t::q -> if t = 0 then 0 else t * prod q;;
print_string "\nEx2: Produit de la liste: ";;
print_int (prod [1;2;3;4;5]);;

(* Ex3 *)
let rec zero n = if n = 0 then [] else 0::(zero (n-1));;
let liste = zero 5;;
print_string "\nEx3: Contenu de la liste: ";;
print_list liste;;

(* Ex4 *)
let rec suite n = if n = -1 then [] else n::(suite (n-1));;
let lllls = suite 5;;
print_string "\nEx4: Contenu de la liste: ";;
print_list lllls;;

(* Ex5 *)
let rec suite_int k n = if n = 0 || k = n then [] else k::(suite_int (k+1) n);;
let rec suite_2 n = suite_int 0 (n + 1);;
let lllllpp = suite_2 5;;
print_string "\nEx5: Contenu de la liste: ";;
print_list lllllpp;;

(* Ex6 *)
let rec nb_pairs l = match l with
[] -> 0
| t::q -> (if (t mod 2) = 0 then 1 else 0) + nb_pairs q;;
print_string "\nEx6: Nombre d'entiers pairs: ";;
print_int (nb_pairs [1;2;3;4;5;6;7;8]);;

(* Ex7 *)
let rec puissance a b = if b = 0 then 1 else a * (puissance a (b-1));;
let rec sommation n = if n = 0 then 0 else sommation (n-1) + (puissance (-1) n) * (puissance n n);;
print_string "\nEx7: Valeur de la somme: ";;
print_int (sommation 3);;

(* Ex 8 *)
let rec nb_un n = if n = 0 then 0 else (nb_un (n / 2) + (n mod 2));;
print_string "\nEx8: Nombre de 1 dans l'écriture en base 2: ";;
print_int (nb_un 13);;

print_string "\n";;