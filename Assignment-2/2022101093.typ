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