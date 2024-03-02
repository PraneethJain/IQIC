#align(center, text(17pt)[*Introduction to Quantum Information and Communication*])
#align(center, text(16pt)[Take Home Mid-Sem])
#align(center, text(13pt)[Moida Praneeth Jain, 2022101093])

#let ket(x) = $lr(|#x angle.r)$
#let bra(x) = $lr(angle.l #x |)$
#let braket(x, y) = $lr(angle.l #x|#y angle.r)$
#let tensor = $times.circle$
#let expected(x) = $angle.l #x angle.r$

= Question 5
*Given*:
$ f : {0, 1}^n |-> {0, 1}^n $
$ U_f (ket(x)_Q tensor ket(y)_R) := ket(x)_Q tensor ket(y xor f(x))_R $
$ V_f (ket(x)_Q tensor ket(y)_R) := (-1)^(y dot f(x)) ket(x)_Q tensor ket(y)_R $

== (a)
*To Prove*:
$ sum_(z in {0, 1}^n) (-1)^((x xor y) dot z) = 2^n delta(x, y) $
*Proof*:

Case 1: $x=y$
$ sum_(z in {0, 1}^n) (-1)^((x xor y) dot z) $
$ sum_(z in {0, 1}^n) (-1)^(0 dot z) $
$ sum_(z in {0, 1}^n) (-1)^0 $
$ sum_(z in {0, 1}^n) 1 $
$ 2^n $
$ 2^n times 1 $
$ 2^n delta(x, y) $

Case 2: $x != y$

Let $k$ be the number of digits different between $x$ and $y$, and let the corresponding indices be $alpha = {alpha_1, alpha_2, alpha_3, dots, alpha_k}$
$ forall i in {1, 2, dots, k} space x_alpha_i != y_alpha_i $ $ forall i in.not alpha space x_i = y_i $. 

$ sum_(z in {0, 1}^n) (-1)^((x xor y) dot z) $
$ sum_(z in {0, 1}^n) (-1)^(xor_(i=1)^n (x_i xor y_i)z_i) $
$ sum_(z in {0, 1}^n) (-1)^(xor_(i=1)^k z_alpha_i) $
$ sum_(z in {0, 1}^n) (-1)^(z_alpha_1 xor z_alpha_2 xor dots xor z_alpha_k) $
Now, since $z$ is looping through all possible bitstrings of length $n$, the parity of any subset of its bits will be odd half the times and even half the times.
$ -1 + 1 - 1 + 1 dots -1 + 1 $
$ 0 $
$ 2^n times 0 $
$ 2^n delta(x, y) $

Now, from both the cases we get
$ sum_(z in {0, 1}^n) (-1)^((x xor y) dot z) = 2^n delta(x, y) $
Hence, proven.