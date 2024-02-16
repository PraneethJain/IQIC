#align(center, text(17pt)[*Introduction to Quantum Information and Communication*])
#align(center, text(16pt)[Theory Assignment-2])
#align(center, text(13pt)[Moida Praneeth Jain, 2022101093])

#let ket(x) = $lr(|#x angle.r)$
#let bra(x) = $lr(angle.l #x |)$
#let braket(x, y) = $lr(angle.l #x|#y angle.r)$
#let tensor = $times.circle$
#let expected(x) = $angle.l #x angle.r$

= Exercise 4.1.3
*Given*:
- $A$ is a square operator acting on Hilbert space $cal(H)_S$
- $I_R$ is the identity operator acting on a Hilbert space $cal(H)_R$ isomorphic to $cal(H)_S$
- $ket(Gamma)_(R S)$ is the unnormalized maximally entangled vector.

*To Prove*: $ "Tr"{A} = bra(Gamma)_(R S) I_R tensor A_S ket(Gamma)_(R S) $

*Proof*:

In the computational basis
$ ket(Gamma)_(R S) = sum_(i=0)^(d-1) ket(i)_R ket(i)_S $
$ bra(Gamma)_(R S) = sum_(i=0)^(d-1) bra(i)_R bra(i)_S $

$ bra(Gamma)_(R S) I_R tensor A_S ket(Gamma)_(R S) = (sum_(i=0)^(d-1) bra(i)_R bra(i)_S) (I_R tensor A_S) (sum_(j=0)^(d-1) ket(j)_R ket(j)_S) $

$ bra(Gamma)_(R S) I_R tensor A_S ket(Gamma)_(R S) = (sum_(i=0)^(d-1) bra(i)_R bra(i)_S)  (sum_(j=0)^(d-1) (I_R tensor A_S) (ket(j)_R tensor ket(j)_S)) $

$ bra(Gamma)_(R S) I_R tensor A_S ket(Gamma)_(R S) = (sum_(i=0)^(d-1) bra(i)_R bra(i)_S)  (sum_(j=0)^(d-1) (I_R ket(j)_R) tensor (A_S ket(j)_S )) $

$ bra(Gamma)_(R S) I_R tensor A_S ket(Gamma)_(R S) = (sum_(i=0)^(d-1) bra(i)_R bra(i)_S)  (sum_(j=0)^(d-1) ket(j)_R tensor (A_S ket(j)_S )) $

$ bra(Gamma)_(R S) I_R tensor A_S ket(Gamma)_(R S) = sum_(i,j=0)^(d-1) (bra(i)_R tensor bra(i)_S)  (ket(j)_R tensor (A_S ket(j)_S )) $

$ bra(Gamma)_(R S) I_R tensor A_S ket(Gamma)_(R S) = sum_(i,j=0)^(d-1) (braket(i, j)_R tensor bra(i)_S A_S ket(j)_S ) $

$ bra(Gamma)_(R S) I_R tensor A_S ket(Gamma)_(R S) = sum_(i,j=0)^(d-1) (delta_(i, j) tensor bra(i)_S A_S ket(j)_S ) $

$ bra(Gamma)_(R S) I_R tensor A_S ket(Gamma)_(R S) = sum_(i=0)^(d-1) bra(i)_S A_S ket(i)_S $

$ bra(Gamma)_(R S) I_R tensor A_S ket(Gamma)_(R S) = "Tr"{A} $

Hence, proven.

= Exercise 4.1.16
*Given*:
- Commutating projectors $Pi_1$ and $Pi_2$
- $0 <= Pi_1, Pi_2 <= I$

*To Prove*:

For arbitrary density operator $rho$
$ "Tr"{(I - Pi_1 Pi_2)rho} <= "Tr"{(I - Pi_1)rho} + "Tr"{(I - Pi_2)rho} $

*Proof*:

= TO DO

= Exercise 4.2.2
*Given*:
- Ensemble ${p_X (x), rho_x}$ of density operators
- POVM with elements ${Lambda_x}$
- Operator $tau$ such that $tau >= p_X (x) rho_x $

*To Prove*:
$ "Tr"{tau} >= sum_x p_X (x) "Tr"{Lambda_x rho_x} $

*Proof*:
$ sum_x p_X (x) "Tr"{Lambda_x rho_x} = sum_x "Tr"{Lambda_x p_X (x) rho_x} $

$ sum_x p_X (x) "Tr"{Lambda_x rho_x} <= sum_x "Tr"{Lambda_x tau} $

$ sum_x p_X (x) "Tr"{Lambda_x rho_x} <= "Tr"{sum_x Lambda_x tau} $

$ sum_x p_X (x) "Tr"{Lambda_x rho_x} <= "Tr"{tau sum_x Lambda_x} $

$ sum_x p_X (x) "Tr"{Lambda_x rho_x} <= "Tr"{tau I} $
$ sum_x p_X (x) "Tr"{Lambda_x rho_x} <= "Tr"{tau} $

Hence, proven.

Now for the case of encoding n bits into a d-dimensional subspace.
$ {2^(-n), rho_i}_(i in {0, 1}^n) $
Consider
$ p_X (x) rho_x = 2^(-n) rho_i $
$ p_X (x) rho_x = 2^(-n ) sum_j lambda_j ket(j) bra(j) $
$ 2^(-n) I - p_X (x) rho_x = 2^(-n) I - 2^(-n ) sum_j lambda_j ket(j) bra(j) $
$ 2^(-n) I - p_X (x) rho_x = 2^(-n) sum_j ket(j) bra(j) - 2^(-n ) sum_j lambda_j ket(j) bra(j) $
$ 2^(-n) I - p_X (x) rho_x = 2^(-n) sum_j (1 - lambda_j) ket(j) bra(j) $
Since $0 <= lambda_j <= 1 space forall j$, $1-lambda_j >= 0 space forall j$. All the eigenvalues of the matrix in LHS are non-negative.
$ 2^(-n) I - p_X (x) rho_x >= 0 $
$ 2^(-n) I >= p_X (x) rho_x $

$therefore$ We consider $tau = 2^(-n) I$

Now, we know that the probability of success is upper bounded by $"Tr"{tau}$

$ "Tr"{tau} = "Tr"{2^(-n) I} $
$ "Tr"{tau} = 2^(-n) "Tr"{I} $
Since $I$ is $d$-dimensional,
$ "Tr"{tau} = d  2^(-n) $
Thus, the expected success probability is bounded above by $d 2^(-n)$

= Exercise 4.3.1
*Given*:
- $A'$ has a Hilbert space structure isomorphic to that of system $A$
- $forall x, y space F_(A A') ket(x)_A ket(y)_A' = ket(y)_A ket(x)_A'$

*To Prove*:
$ P(rho_A) = "Tr"{(rho_A tensor rho_A') F_(A A')} $

*Proof*:
$ rho_A = sum_i lambda_i ket(i)_A bra(i)_A $
$ rho_A' = sum_j lambda_j ket(j)_A' bra(j)_A' $

$ "Tr"{(rho_A tensor rho_A') F_(A A')} = "Tr"{F_(A A') (rho_A tensor rho_A')} $
$ "Tr"{(rho_A tensor rho_A') F_(A A')} = "Tr"{F_(A A') ((sum_i lambda_i ket(i)_A bra(i)_A) tensor (sum_j lambda_j ket(j)_A' bra(j)_A'))} $
$ "Tr"{(rho_A tensor rho_A') F_(A A')} = "Tr"{F_(A A') (sum_(i,j) lambda_i lambda_j ket(i)_A bra(i)_A  tensor ket(j)_A' bra(j)_A')} $
$ "Tr"{(rho_A tensor rho_A') F_(A A')} = "Tr"{F_(A A') (sum_(i,j) lambda_i lambda_j ket(i)_A bra(i)_A  tensor ket(j)_A' bra(j)_A')} $
$ "Tr"{(rho_A tensor rho_A') F_(A A')} = "Tr"{F_(A A') (sum_(i,j) lambda_i lambda_j (ket(i)_A ket(j)_A') (bra(i)_A bra(j)_A'))} $
$ "Tr"{(rho_A tensor rho_A') F_(A A')} = "Tr"{(sum_(i,j) lambda_i lambda_j (F_(A A') ket(i)_A ket(j)_A') (bra(i)_A bra(j)_A'))} $
$ "Tr"{(rho_A tensor rho_A') F_(A A')} = "Tr"{sum_(i,j) lambda_i lambda_j (ket(j)_A ket(i)_A') (bra(i)_A bra(j)_A')} $
$ "Tr"{(rho_A tensor rho_A') F_(A A')} = sum_(i,j) lambda_i lambda_j"Tr"{ (ket(j)_A ket(i)_A') (bra(i)_A bra(j)_A')} $
$ "Tr"{(rho_A tensor rho_A') F_(A A')} = sum_(i,j) lambda_i lambda_j"Tr"{ (bra(i)_A bra(j)_A')(ket(j)_A ket(i)_A') } $
$ "Tr"{(rho_A tensor rho_A') F_(A A')} = sum_(i,j) lambda_i lambda_j"Tr"{braket(i, j)_A tensor braket(j, i)_A'} $
$ "Tr"{(rho_A tensor rho_A') F_(A A')} = sum_(i,j) lambda_i lambda_j braket(i, j)_A braket(j, i)_A' $
$ "Tr"{(rho_A tensor rho_A') F_(A A')} = sum_(i,j) lambda_i lambda_j delta_(i, j) $
$ "Tr"{(rho_A tensor rho_A') F_(A A')} = sum_(i) lambda_i^2 $
$ "Tr"{(rho_A tensor rho_A') F_(A A')} = "Tr"{rho_A^2} $
$ "Tr"{(rho_A tensor rho_A') F_(A A')} = P(rho_A) $

Hence, proven.

= Exercise 4.3.6
*Given*:
$ Pi_"even" = 1/2 (I_A tensor I_B + Z_A tensor Z_B) = ket(00)bra(00)_(A B) + ket(11)bra(11)_(A B) $
$ Pi_"odd" = 1/2 (I_A tensor I_B - Z_A tensor Z_B) = ket(01)bra(01)_(A B) + ket(10)bra(10)_(A B) $
$ ket(Phi^+)_(A B) = 1/sqrt(2) (ket(00)_(A B) + ket(11)_(A B)) $
$ pi_A = 1/2 (ket(0)bra(0)_A + ket(1)bra(1)_A) $
$ pi_B = 1/2 (ket(0)bra(0)_B + ket(1)bra(1)_B) $

*To Prove*:
- $ket(Phi^+)_(A B)$ returns an even parity result with probabilty $1$
- $pi_A tensor pi_B$ returns even or odd parity with equal probability

*Proof*:

First we find the density matrix of the bell state
$ rho_(A B) = ket(Phi^+)_(A B) bra(Phi^+)_(A B) $
Now, the probability of the bell state collapsing to $Pi_"even"$ is
$ P = "Tr"{rho_(A B) Pi_"even" } $
$ P = "Tr"{ket(Phi^+)_(A B) bra(Phi^+)_(A B) (ket(00)bra(00)_(A B) + ket(11)bra(11)_(A B)) } $
$ P = "Tr"{ket(Phi^+) bra(Phi^+) ket(00)bra(00) + ket(Phi^+) bra(Phi^+) ket(11)bra(11) } $
$ P = "Tr"{ ket(Phi^+) bra(Phi^+) ket(00)bra(00) } + "Tr"{ ket(Phi^+) bra(Phi^+) ket(11)bra(11) } $
$ P = "Tr"{ braket(00, Phi^+) braket(Phi^+, 00) } + "Tr"{ braket(11, Phi^+) braket(Phi^+, 11) } $
$ P = 1/2 + 1/2 $
$ P = 1 $

$therefore$ $ket(Phi^+)_(A B)$ returns an even parity result with probabilty $1$

Now, we find the probability of $pi_A tensor pi_B$ returning even parity
$ P = "Tr"{(pi_A tensor pi_B) Pi_"even"} $
$ P = 1/4 "Tr"{(ket(0)bra(0)_A + ket(1)bra(1)_A) tensor (ket(0)bra(0)_B + ket(1)bra(1)_B) (ket(00)bra(00)_(A B) + ket(11)bra(11)_(A B))} $
$ P = 1/4 "Tr"{(ket(0)bra(0)_A tensor ket(0)bra(0)_B + ket(0)bra(0)_A tensor ket(1)bra(1)_B + ket(1)bra(1)_A tensor ket(0)bra(0)_B + ket(1)bra(1)_A tensor ket(1)bra(1)_B) (ket(00)bra(00)_(A B) + ket(11)bra(11)_(A B))} $
$ P = 1/4 "Tr"{(ket(00)bra(00) + ket(01)bra(01) + ket(10) bra(10) + ket(11)bra(11) ) (ket(00)bra(00) + ket(11)bra(11))} $
$ P = 1/4 "Tr"{ket(00)bra(00)ket(00)bra(00) + ket(00)bra(00)ket(11)bra(11) + \ ket(01)bra(01)ket(00)bra(00) + ket(01)bra(01)ket(11)bra(11) + \ ket(10)bra(10)ket(00)bra(00) + ket(10)bra(10)ket(11)bra(11) + \ ket(11)bra(11) ket(00)bra(00) + ket(11)bra(11)ket(11)bra(11)} $

$ P = 1/4 ("Tr"{ket(00)bra(00)} + "Tr"{ket(11)bra(11)}) $
$ P = 1/4 (1 + 1) $
$ P = 1/2 $

The probability of $pi_A tensor pi_B$ returning an odd parity is $1 - P = 1 - 1/2 = 1/2$ (As the measurements are orthogonal)

$therefore$ $pi_A tensor pi_B$ returns even or odd parity with equal probability

Now, we perform the same calculations for the phase parity measurement
$ Pi_"even"^X = 1/2(I_A tensor I_B + X_A tensor X_B) $
$ Pi_"odd"^X = 1/2(I_A tensor I_B - X_A tensor X_B) $
The probability of the bell state collapsing to $Pi_"even"^X$ is
$ P = "Tr"{rho_(A B)Pi_"even"^X} $
$ P = 1/2 "Tr"{ket(Phi^+)_(A B)bra(Phi^+)_(A B) (I_A tensor I_B + X_A tensor X_B)} $
$ P = 1/2 "Tr"{ket(Phi^+)_(A B)bra(Phi^+)_(A B) I_A tensor I_B} + 1/2 "Tr"{ket(Phi^+)_(A B)bra(Phi^+)_(A B) X_A tensor X_B} $
$ P = 1/2 "Tr"{ket(Phi^+)_(A B)bra(Phi^+)_(A B) } + 1/2 "Tr"{ket(Phi^+)_(A B)bra(Phi^+)_(A B) X_A tensor X_B} $
$ P = 1/2 "Tr"{bra(Phi^+)_(A B) ket(Phi^+)_(A B)} + 1/2 "Tr"{ket(Phi^+)_(A B)bra(Phi^+)_(A B) X_A tensor X_B} $
$ P = 1/2 "Tr"{braket(Phi^+, Phi^+)_(A B)} + 1/2 "Tr"{ket(Phi^+)_(A B)bra(Phi^+)_(A B) X_A tensor X_B} $
$ P = 1/2 + 1/2 "Tr"{ket(Phi^+)_(A B)bra(Phi^+)_(A B) X_A tensor X_B} $
$ P = 1/2 + 1/2 "Tr"{ket(Phi^+)_(A B)bra(Phi^+)_(A B) (ket(0)bra(1)_A + ket(1)bra(0)_A) tensor (ket(0)bra(1)_B + ket(1)bra(0)_B)} $
$ P = 1/2 + 1/2 "Tr"{ket(Phi^+)_(A B)bra(Phi^+)_(A B) (ket(0)bra(1)_A tensor ket(0)bra(1)_B + ket(0)bra(1)_A tensor ket(1)bra(0)_B + ket(1)bra(0)_A tensor ket(0)bra(1)_B + ket(1)bra(0)_A tensor ket(1) bra(0)_B)} $
$ P = 1/2 + 1/2 "Tr"{ket(Phi^+)bra(Phi^+) (ket(00)bra(11) + ket(01)bra(10) + ket(10)bra(01) + ket(11)bra(00)} $
$ P = 1/2(1 + "Tr"{ket(Phi^+)bra(Phi^+) ket(00)bra(11)} + "Tr"{ket(Phi^+)bra(Phi^+)ket(01)bra(10)} + "Tr"{ket(Phi^+)bra(Phi^+)ket(10)bra(01)} + "Tr"{ket(Phi^+)bra(Phi^+)ket(11)bra(00)}) $
$ P = 1/2(1 + "Tr"{braket(11, Phi^+)braket(Phi^+, 00)} + "Tr"{braket(10, Phi^+)braket(Phi^+, 01)} + "Tr"{braket(01, Phi^+)braket(Phi^+, 10)} + "Tr"{braket(00, Phi^+)braket(Phi^+, 11)}) $
$ P = 1/2(1 + "Tr"{1/sqrt(2) * 1/sqrt(2)} + "Tr"{0 * 0} + "Tr"{0 * 0} + "Tr"{1/sqrt(2) * 1/sqrt(2)}) $
$ P = 1/2(1 + 1/2 + 1/2) $
$ P = 1/2(2) $
$ P = 1 $

$therefore$ $ket(Phi^+)_(A B)$ returns an even phase parity result with probabilty $1$

Now, we find the probability of $pi_A tensor pi_B$ returning even phase parity
$ P = "Tr"{(pi_A tensor pi_B) Pi_"even"^X} $
$ P = 1/2 "Tr"{(pi_A tensor pi_B) (I_A tensor I_B + X_A tensor X_B)} $
$ P = 1/2 "Tr"{(pi_A tensor pi_B) (I_A tensor I_B)} + 1/2 "Tr"{(pi_A tensor pi_B)(X_A tensor X_B)} $
$ P = 1/2 "Tr"{pi_A tensor pi_B} + 1/2 "Tr"{(pi_A tensor pi_B)(X_A tensor X_B)} $
$ P = 1/2 "Tr"{pi_A}"Tr"{pi_B}+ 1/2 "Tr"{(pi_A tensor pi_B)(X_A tensor X_B)} $
$ P = 1/2 + 1/2 "Tr"{(pi_A tensor pi_B)(X_A tensor X_B)} $
$ P = 1/2(1 + "Tr"{pi_A X_A tensor pi_B X_B}) $
$ P = 1/2(1 + "Tr"{pi_A X_A} "Tr"{pi_B X_B}) $
$ P = 1/2(1 + "Tr"{X_A pi_A} "Tr"{X_B pi_B}) $
$ P = 1/2(1 + "Tr"{X pi}^2) $
$ P = 1/2(1 + "Tr"{X (ket(0)bra(0) + ket(1)bra(1))}^2) $
$ P = 1/2(1 + "Tr"{ket(1)bra(0) + ket(0)bra(1)}^2) $
$ P = 1/2(1 + "Tr"{mat(0, 1; 1, 0)}^2) $
$ P = 1/2(1 + 0) $
$ P = 1/2 $

The probability of $pi_A tensor pi_B$ returning an odd phase parity is $1 - P = 1 - 1/2 = 1/2$ (As the measurements are orthogonal)

$therefore$ $pi_A tensor pi_B$ returns even or odd phase parity with equal probability

The same is true for the phase parity measurement. Hence, proven.

= Exercise 4.3.18
*Given*:
$ rho_A = sum_(x in X) p_X (x) rho_A^x $
$ rho_(X A) = sum_(x in X) p_X (x) ket(x)bra(x) tensor rho_A^x $
$ "Measurement operators" {Lambda_A^j} $

*To Prove*:
$ "Tr"{rho_A Lambda_A^j} = "Tr"{rho_(X A)(I_X tensor Lambda_A^j)} $
*Proof*:
$ "Tr"{rho_(X A)(I_X tensor Lambda_A^j)} = "Tr"{(sum_(x in X) p_X (x) ket(x)bra(x) tensor rho_A^x)(I_X tensor Lambda_A^j)} $
$ "Tr"{rho_(X A)(I_X tensor Lambda_A^j)} = "Tr"{sum_(x in X) (p_X (x)(ket(x)bra(x) tensor rho_A^x) (I_X tensor Lambda_A^j))} $
$ "Tr"{rho_(X A)(I_X tensor Lambda_A^j)} = "Tr"{sum_(x in X) (p_X (x)(ket(x)bra(x) I_X tensor rho_A^x Lambda_A^j)) } $
$ "Tr"{rho_(X A)(I_X tensor Lambda_A^j)} = "Tr"{sum_(x in X) (p_X (x)(ket(x)bra(x)_X tensor rho_A^x Lambda_A^j)) } $
$ "Tr"{rho_(X A)(I_X tensor Lambda_A^j)} = sum_(x in X) p_X (x)"Tr"{ket(x)bra(x)_X tensor rho_A^x Lambda_A^j} $
$ "Tr"{rho_(X A)(I_X tensor Lambda_A^j)} = sum_(x in X)p_X (x)"Tr"{ket(x)bra(x)_X} "Tr"{rho_A^x Lambda_A^j} $
Since trace of a density operator is $1$,
$ "Tr"{rho_(X A)(I_X tensor Lambda_A^j)} = sum_(x in X) p_X (x)"Tr"{rho_A^x Lambda_A^j} $
$ "Tr"{rho_(X A)(I_X tensor Lambda_A^j)} = "Tr"{sum_(x in X) p_X (x)rho_A^x Lambda_A^j} $
$ "Tr"{rho_(X A)(I_X tensor Lambda_A^j)} = "Tr"{rho_A Lambda_A^j} $
Hence, proven.

= Exercise 4.4.1
*Given*:
- Linear Map $cal(N)$
- Choi operator $"id"_R tensor cal(N)_(A->B)(ket(Gamma)bra(Gamma)_(R A)) = sum_(i,j=0)^(d-1) ket(i)bra(j)_R tensor cal(N)_(A->B)(ket(i)bra(j)_A)$ is PSD

*To Prove*:
- $cal(N)$ is completely positive
*Proof*:

To prove that $cal(N)$ is completely positive, we need to show that $id_R tensor cal(N)_(A->B)(X_(R A))$ is PSD for all $X_(R A)$ that are PSD

$ "id"_R tensor cal(N)_(A->B)(X_(R A)) = "id"_R tensor cal(N)_(A->B)(sum ket(phi_i)bra(phi_i)_(R A)) $
$ "id"_R tensor cal(N)_(A->B)(X_(R A)) = sum_i "id"_R tensor cal(N)_(A->B)( ket(phi_i)bra(phi_i)_(R A)) $
Consider $M_i = "id"_R tensor cal(N)_(A->B)(ket(phi_i)bra(phi_i)_(R A))$

We have $ket(phi_i) = sum_(j,k=0)^(d-1) alpha_(j k) ket(j)_R ket(k)_A$
$ M_i = "id"_R tensor cal(N)_(A->B)(sum_(j_1,k_1=0)^(d-1) alpha_(j_1 k_1) ket(j_1)_R ket(k_1)_A sum_(j_2,k_2=0)^(d-1) alpha_(j_2 k_2)^* bra(j_2)_R bra(k_2)_A) $
$ M_i = "id"_R tensor cal(N)_(A->B)(sum_(j_1,k_1,j_2,k_2=0)^(d-1)alpha_(j_1 k_1) alpha_(j_2 k_2)^* ket(j_1)_R ket(k_1)_A bra(j_2)_R bra(k_2)_A) $
$ M_i = "id"_R tensor cal(N)_(A->B)(sum_(j_1,k_1,j_2,k_2=0)^(d-1)alpha_(j_1 k_1) alpha_(j_2 k_2)^* ket(j_1)bra(j_2)_R tensor ket(k_1)bra(k_2)_A) $
$ M_i = sum_(j_1,k_1,j_2,k_2=0)^(d-1)alpha_(j_1 k_1) alpha_(j_2 k_2)^* ("id"_R tensor cal(N)_(A->B))(ket(j_1)bra(j_2)_R tensor ket(k_1)bra(k_2)_A) $
$ M_i = sum_(j_1,k_1,j_2,k_2=0)^(d-1)alpha_(j_1 k_1) alpha_(j_2 k_2)^* ("id"_R ket(j_1) bra(j_2)_R) tensor (cal(N)_(A->B)ket(k_1)bra(k_2)_A) $
$ M_i = sum_(j_1,k_1,j_2,k_2=0)^(d-1)alpha_(j_1 k_1) alpha_(j_2 k_2)^* ket(j_1) bra(j_2)_R tensor cal(N)_(A->B)ket(k_1)bra(k_2)_A $
Now, using 4.198-4.212 of the book, we have
$ M_i = sum_(j_1,k_1,j_2,k_2=0)^(d-1)alpha_(j_1 k_1) alpha_(j_2 k_2)^* ket(j_1) bra(j_2)_R tensor sum_(l=0)^(d-1)V_l ket(k_1) bra(k_2) V_l^dagger $
$ M_i = sum_(l=0)^(d-1) sum_(j_1,k_1,j_2,k_2=0)^(d-1)alpha_(j_1 k_1) alpha_(j_2 k_2)^* ket(j_1) bra(j_2)_R tensor V_l ket(k_1) bra(k_2) V_l^dagger $
$ M_i = sum_(l=0)^(d-1) sum_(j_1,k_1,j_2,k_2=0)^(d-1)alpha_(j_1 k_1) alpha_(j_2 k_2)^* I_R ket(j_1) bra(j_2)_R I_R tensor V_l ket(k_1) bra(k_2) V_l^dagger $
$ M_i = sum_(l=0)^(d-1)I_R tensor V_l (sum_(j_1,k_1,j_2,k_2=0)^(d-1)alpha_(j_1 k_1) alpha_(j_2 k_2)^* ket(j_1) bra(j_2)_R tensor ket(k_1) bra(k_2)) I_R tensor V_l^dagger $
$ M_i = sum_(l=0)^(d-1)I_R tensor V_l (ket(phi_l) bra(phi_l)_(R A)) I_R tensor V_l^dagger $

Now, from the Choi-Kraus theorem, $M_i$ is a completely positive.

$ "id"_R tensor cal(N)_(A->B)(X_(R A)) = sum_i M_i $
Since sum of completely positive maps is also completely positive, $cal(N)$ is completely positive.

Hence, proven