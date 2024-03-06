#align(center, text(17pt)[*Introduction to Quantum Information and Communication*])
#align(center, text(16pt)[Take Home Mid-Sem])
#align(center, text(13pt)[Moida Praneeth Jain, 2022101093])

#let ket(x) = $lr(|#x angle.r)$
#let bra(x) = $lr(angle.l #x |)$
#let braket(x, y) = $lr(angle.l #x|#y angle.r)$
#let tensor = $times.circle$
#let expected(x) = $angle.l #x angle.r$

= Question 5

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
Hence, proven

== (b)
*Given*:
$ f : {0, 1}^n |-> {0, 1}^n $
$ U_f (ket(x)_Q tensor ket(y)_R) := ket(x)_Q tensor ket(y xor f(x))_R $
$ V_f (ket(x)_Q tensor ket(y)_R) := (-1)^(y dot f(x)) ket(x)_Q tensor ket(y)_R $

*To Prove*:
$ V_f (ket(x)_Q tensor ket(y)_R) = (II_Q tensor H^(tensor n)) U_f (II_Q tensor H^(tensor n))(ket(x)_Q tensor ket(y)_R) $
*Proof*:
We will be using the identity $H^(tensor n)ket(x) = 1/sqrt(2^n) sum_(z in {0, 1}^n) (-1)^(x dot z)ket(z)$
$ (II_Q tensor H^(tensor n)) U_f (II_Q tensor H^(tensor n))(ket(x)_Q tensor ket(y)_R) $
$ (II_Q tensor H^(tensor n)) U_f (II_Q ket(x)_Q tensor H^(tensor n) ket(y)_R) $
$ (II_Q tensor H^(tensor n)) U_f (ket(x)_Q tensor 1/sqrt(2^n)sum_(z in {0, 1}^n)(-1)^(y dot z)ket(z)_R) $
$ 1/sqrt(2^n) sum_(z in {0, 1}^n)(-1)^(y dot z) (II_Q tensor H^(tensor n)) U_f (ket(x)_Q tensor ket(z)_R) $
$ 1/sqrt(2^n) sum_(z in {0, 1}^n)(-1)^(y dot z) (II_Q tensor H^(tensor n)) (ket(x)_Q tensor ket(z xor f(x))_R) $
$ 1/sqrt(2^n) sum_(z in {0, 1}^n)(-1)^(y dot z) (II_Q ket(x)_Q tensor H^(tensor n) ket(z xor f(x))_R) $
$ 1/sqrt(2^n) sum_(z in {0, 1}^n)(-1)^(y dot z) ket(x)_Q tensor (1/sqrt(2^n) sum_(w in {0, 1}^n) (-1)^((z xor f(x)) dot w) ket(w)_R) $
$ 1/2^n sum_(z, w in {0, 1}^n)(-1)^((y dot z)) (-1)^((z xor f(x)) dot w) ket(x)_Q tensor ket(w)_R $
$ 1/2^n sum_(w in {0, 1}^n)(-1)^(w dot f(x)) ket(x)_Q tensor ket(w)_R sum_(z in {0, 1}^n) (-1)^((y xor w) dot z)  $
$ 1/2^n sum_(w in {0, 1}^n)(-1)^(w dot f(x)) ket(x)_Q tensor ket(w)_R 2^n delta(w, y)  $
$ sum_(w in {0, 1}^n)(-1)^(w dot f(x)) ket(x)_Q tensor ket(w)_R delta(w, y)  $
$ (-1)^(y dot f(x)) ket(x)_Q tensor ket(y)_R  $
$ V_f (ket(x)_Q tensor ket(y)_R) $
Hence, proven

== Question 6
== (a)
Before the first Hadamard, the state is
$ ket(0)_A ket(psi)_B ket(phi)_C $
After the first Hadamard, the state is
$ H_A ket(0)_A ket(psi)_B ket(phi)_C  $
$ 1/sqrt(2) (ket(0)_A + ket(1)_A) ket(psi)_B ket(phi)_C  $
$ 1/sqrt(2) ket(0)_A ket(psi)_B ket(phi)_C + 1/sqrt(2) ket(1)_A ket(psi)_B ket(phi)_C  $
After the Controlled-SWAP, the state is
$ 1/sqrt(2) ket(0)_A ket(psi)_B ket(phi)_C + 1/sqrt(2) ket(1)_A ket(phi)_B ket(psi)_C  $
After the second Hadamard, we get the required state
$ ket(psi^')_(A B C) = H_A (1/sqrt(2) ket(0)_A ket(psi)_B ket(phi)_C + 1/sqrt(2) ket(1)_A ket(phi)_B ket(psi)_C)  $
$ ket(psi^')_(A B C) = 1/sqrt(2) H_A ket(0)_A ket(psi)_B ket(phi)_C + 1/sqrt(2) H_A ket(1)_A ket(phi)_B ket(psi)_C  $
$ ket(psi^')_(A B C) = 1/2 (ket(0)_A + ket(1)_A) ket(psi)_B ket(phi)_C + 1/2 (ket(0)_A - ket(1)_A) ket(phi)_B ket(psi)_C  $
$ ket(psi^')_(A B C) = 1/2 ket(0)_A (ket(psi)_B ket(phi)_C + ket(phi)_B ket(psi)_C) + 1/2 ket(1)_A (ket(psi)_B ket(phi)_C - ket(phi)_B ket(psi)_C)  $
This is the required tripartite state

== (b)
$ p_0 = 1/2 (bra(psi)_B bra(phi)_C + bra(phi)_B bra(psi)_C) 1/2 (ket(psi)_B ket(phi)_C + ket(phi)_B ket(psi)_C) $
$ p_0 = 1/4 (bra(psi)_B bra(phi)_C ket(psi)_B ket(phi)_C + bra(psi)_B bra(phi)_C ket(phi)_B ket(psi)_C + bra(phi)_B bra(psi)_C ket(psi)_B ket(phi)_C + bra(phi)_B bra(psi)_C ket(phi)_B ket(psi)_C) $
$ p_0 = 1/4 (braket(psi, psi)_B tensor braket(phi, phi)_C + braket(psi, phi)_B tensor braket(phi, psi)_C + braket(phi, psi)_B tensor braket(psi, phi)_C + braket(phi, phi)_B tensor braket(psi, psi)_C) $
$ p_0 = 1/4 (1 + |braket(psi, phi)|^2 + |braket(psi, phi)|^2 + 1) $
$ p_0 = 1/2 + 1/2|braket(psi, phi)|^2 $
Since $p_0 + p_1 = 1$,
$ p_1 = 1/2 - 1/2|braket(psi, phi)|^2 $

== (c)
Since $ket(psi)_A$ and $ket(phi)_B$ are pure states, their fidelity is $|braket(psi,phi)|^2$

The probability of measuring a $0$ is $p_0$, so we get
$ p_0 = m/N $
$ 1/2 + 1/2|braket(psi, phi)|^2 = m/N $
$ 1 + |braket(psi, phi)|^2 = 2m/N $
$ |braket(psi, phi)|^2 = 2m/N - 1 $
This is the required fidelity


== Question 7
*Given*:
$ f: {0, 1}^n |-> {0, 1}^n $
$ forall x, y in {0, 1}^n space f(x) = f(y) <-> x xor y in {0^n, d} $
$ U_f (ket(x)_Q tensor ket(y)_R) := ket(x)_Q tensor ket(y xor f(x))_R $

== (a)
*To Prove*:
$f$ is one-to-one when $d=0^n$ and two-to-one otherwise

*Proof*:

Case 1: $d = 0^n$
$ forall x, y in {0, 1}^n space f(x) = f(y) <-> x xor y in {0^n, 0^n} $
$ forall x, y in {0, 1}^n space f(x) = f(y) <-> x xor y in {0^n} $
$ forall x, y in {0, 1}^n space f(x) = f(y) <-> x xor y = 0^n $
$ forall x, y in {0, 1}^n space f(x) = f(y) <-> x = y $

Thus, $f$ is one-one in this case

\ \

Case 2: $d != 0^n$

To prove that $f$ is two-one, we need to show that $forall z in "range"(f)$, we have exactly two elements $x, y$ such that $f(x) = f(y) = z$

$ forall x, y in {0, 1}^n space f(x) = f(y) <-> x xor y in {0^n, d} $

(i) $x xor y = 0^n$

$x = y$, thus $f(x) = f(y)$

(ii) $x xor y = d "with" d != 0^n$

$ y = d xor x $
Since $d != 0^n$, we get $y != x$, and $f(x) = f(y)$

Clearly, two distinct values $x$ and $y$ give the same output. Now, we need to prove that no more than two distinct inputs give the same output. 

Consider distinct $a, b, c in {0, 1}^n$ such that $f(a) = f(b) = f(c)$

Since $a, b, c$ are distinct, their xor cannot be $0^d$, thus we have
$ a xor b = b xor c = d $
$ a = d xor b, c = d xor b $
$ a = c $
This is a contradiction. Thus, there only exist exactly two input values for each output value.

Thus, $f$ is a two-one function in this case

Hence, proven

== (b)
*To Find*:
$ket(psi^')_(Q R)$

*Solution*:

Initially, the state is $ ket(0^n)_Q tensor ket(O^n)_R $
After the first Hadamard, the state is
$ H^(tensor n)ket(0^n)_Q tensor ket(0^n)_R $ 
$ 1/sqrt(2^n) sum_(x in {0, 1}^n) ket(x)_Q tensor ket(0^n)_R $
After the oracle, the state is
$ U_f 1/sqrt(2^n) sum_(x in {0, 1}^n) ket(x)_Q tensor ket(0^n)_R $
$ 1/sqrt(2^n) sum_(x in {0, 1}^n) U_f ket(x)_Q tensor ket(0^n)_R $
$ 1/sqrt(2^n) sum_(x in {0, 1}^n) ket(x)_Q tensor ket(0^n xor f(x))_R $
$ 1/sqrt(2^n) sum_(x in {0, 1}^n) ket(x)_Q tensor ket(f(x))_R $
After the second Hadamard, the required state is 
$ ket(psi^')_(Q R) = H^(tensor n) 1/sqrt(2^n) sum_(x in {0, 1}^n) ket(x)_Q tensor ket(f(x))_R $
$ ket(psi^')_(Q R) = 1/sqrt(2^n) sum_(x in {0, 1}^n) H^(tensor n) ket(x)_Q tensor ket(f(x))_R $
$ ket(psi^')_(Q R) = 1/sqrt(2^n) sum_(x in {0, 1}^n) 1/sqrt(2^n)sum_(z in {0, 1}^n)(-1)^(x dot z) ket(z)_Q tensor ket(f(x))_R $
$ ket(psi^')_(Q R) = 1/2^n sum_(x, z in {0, 1}^n)(-1)^(x dot z) ket(z)_Q tensor ket(f(x))_R $

== (c)
*To Prove*: Probability of getting outcome $j = j_1 dots j_n$ is given by
$ p(j) = bar.double 1/2^n sum_(z in "range"(f)) (1 + (-1)^(j dot d))ket(z) bar.double ^2 $

*Proof*:
$ ket(psi^')_(Q R) = 1/2^n sum_(x, z in {0, 1}^n)(-1)^(x dot z) ket(z)_Q tensor ket(f(x))_R $

The coefficient of $ket(j)$ is
$ ket(phi) = 1/2^n sum_(x in {0, 1}^n) (-1)^(x dot j) ket(f(x)) $
Thus, the probability of measuring outcome $ket(j)$ is
$ braket(phi, phi) $
$ (1/2^n sum_(x in {0, 1}^n) (-1)^(x dot j) bra(f(x))) (1/2^n sum_(y in {0, 1}^n) (-1)^(y dot j) ket(f(y))) $
$ 1/2^(2n) sum_(x,y in {0, 1}^n) (-1)^(x dot j + y dot j) braket(f(x), f(y)) $

== (d)
*To Prove*: $p(j)$ is nonzero only if $j dot z = 0$

*Proof*:

We know that $ j dot z = xor_(i=1)^n j_i z_i $
Thus, either $j dot z = 0$ or $j dot z = 1$, since the xor of bits can only be a bit.

If $j dot z = 0$,
$ p(j) = bar.double 1/2^n sum_(z in "range"(f)) (1 + (-1)^0) ket(z) bar.double ^2 $
$ p(j) = bar.double 1/2^(n-1) sum_(z in "range"(f)) ket(z) bar.double ^2 $

If otherwise, i.e, $j dot z = 1$
$ p(j) = bar.double 1/2^n sum_(z in "range"(f)) (1 + (-1)^1) ket(z) bar.double ^2 $
$ p(j) = bar.double 1/2^n sum_(z in "range"(f)) 0 ket(z) bar.double ^2 $
$ p(j) = 0 $

Clearly, if $j dot z = 0$, only then $p(j)$ can be non-zero.

Hence, proven.