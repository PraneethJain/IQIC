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