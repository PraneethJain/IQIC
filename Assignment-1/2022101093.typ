#align(center, text(17pt)[*Introduction to Quantum Information and Communication*])
#align(center, text(16pt)[Theory Assignment-1])
#align(center, text(13pt)[Moida Praneeth Jain, 2022101093])

#let ket(x) = $lr(|#x angle.r)$
#let bra(x) = $lr(angle.l #x |)$

= Question 1
*To Prove*: Any $n+1$ vectors belonging to an $n$ dimensional vector space must be linearly dependent

*Proof*:

Let $V$ be an $n$ dimensional vector space

Assume $A = {v_1, v_2, v_3, dots, v_(n+1)}$ is a set of linearly independent vectors where $v_i in V$

Let $B = A \\ {v_(n+1)} = {v_1, v_2, v_3, dots, v_n}$. Since $B subset A$, $B$ is also a set of linearly independent vectors.

Now, since $V$ is $n$ dimensional and $|B|= n$, $"span"(B) = V$ by the definition of $n$ dimensional vector space.

Therefore, every vector $v in V$ can be expressed as a linear combination of vectors in $B$

$therefore v_(n+1) = a_1 v_1 + a_2 v_2 + a_3 v_3 + dots + a_n v_n$, where $a_i in FF ("field over which" V "is defined")$

$therefore$ $V$ is not linearly dependent. This is a contradiction

Any set $A$ of $n+1$ vectors belonging to an $n$ dimensional vector space must be linearly dependent.

= Question 2
*Given*: $A = mat(1, 2; 2, -2)$

*To Find*: square root of matrix $A$

*Solution*: 

Note that
$A^dagger = A$. Thus, by the spectral theorem, $A$ can be decomposed into an orthonormal eigenbasis. Now, we find this eigenbasis.

$ |A - lambda I| = 0 $
$ |mat(1 - lambda, 2; 2, -2 - lambda)| = 0 $
$ lambda_1 = 2, lambda_2 = -3 $
Let their corresponding normalized eigenvectors be $ket(2)$ and $ket(-3)$

$ A ket(2) = 2 ket(2) "and" A ket(-3) = 2 ket(-3) $
On solving, we get
$ ket(2) = 1/sqrt(5) mat(2; 1) "and" ket(-3) = 1/sqrt(5) mat(1; -2) $

Now, by the spectral theorem, we have
$ A = sum_i lambda_i ket(lambda_i) bra(lambda_i) $
$ A = 2 ket(2)bra(2) - 3 ket(-3) bra(-3) $

We know that
$ f(A) = sum_i f(lambda_i) ket(lambda_i) bra(lambda_i) $
So
$ sqrt(A) = sqrt(2)ket(2)bra(2) + sqrt(-3)ket(-3)bra(-3) $
$ sqrt(A) = sqrt(2)ket(2)bra(2) + sqrt(-3)ket(-3)bra(-3) $
$ sqrt(A) = 1/5(sqrt(2)mat(2; 1)mat(2, 1) + sqrt(-3)mat(1; -2)mat(1, -2)) $
$ sqrt(A) = 1/5(sqrt(2) mat(4, 2; 2, 1) + sqrt(-3) mat(1, -2; -2, 4)) $
$ sqrt(A) = 1/5 mat(4sqrt(2) + i sqrt(3), 2sqrt(2) - 2i sqrt(3); 2 sqrt(2) - 2 i sqrt(3), sqrt(2) + 4 i sqrt(3)) $