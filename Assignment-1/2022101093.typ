#align(center, text(17pt)[*Introduction to Quantum Information and Communication*])
#align(center, text(16pt)[Theory Assignment-1])
#align(center, text(13pt)[Moida Praneeth Jain, 2022101093])

#let ket(x) = $lr(|#x angle.r)$
#let bra(x) = $lr(angle.l #x |)$
#let braket(x, y) = $lr(angle.l #x|#y angle.r)$
#let tensor = $times.circle$

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

= Question 3
*Given*: $A$ is an $n times n $ matrix and $B$ is an $m times m$ matrix

*To Prove*: $tr(A tensor B) = tr(A) times tr(B)$

*Proof*:

$ A tensor B = mat(A_(1, 1)B, A_(1, 2) B, dots, A_(1, n) B; 
                   A_(2, 1) B, A_(2, 2) B, dots, A_(2, n) B;
                   dots.v, dots.v, dots.down, dots.v;
                   A_(n, 1)B, A_(n, 2)B, dots, A_(n, n) B) $

where each $A_(i, j) B$ is an $m times m$ matrix expanded.

$ tr(A tensor B) = sum_(i=1)^n tr(A_(i, i) B) $
$ tr(A tensor B) = sum_(i=1)^n A_(i, i) tr(B) $
$ tr(A tensor B) = tr(B) times sum_(i=1)^n A_(i, i) $
$ tr(A tensor B) = tr(A) times tr(B) $

= Question 4
*Given*:  $ket(psi) = cos(theta/2) ket(0) + e^(i phi) sin(theta/2) ket(1)$

*To Prove*: states are diametrically opposite on Bloch sphere $<=>$ states are orthogonal

*Proof*:
Let state $ ket(psi) = cos(theta/2) ket(0) + e^(i phi) sin(theta/2) ket(1) $

Now, its diametrically opposite state is given by adding $pi$ to $theta$

$ ket(psi^') = cos((theta + pi)/2) ket(0) + e^(i phi) sin((theta + pi)/2) ket(1) $

$ ket(psi^') = cos(pi/2 + theta/2) ket(0) + e^(i phi) sin(pi/2 + theta/2) ket(1) $

$ ket(psi^') = -sin(theta/2) ket(0) + e^(i phi) cos(theta/2) ket(1) $

Now, consider
$ braket(psi, psi^') = mat(cos(theta/2), e^(-i phi) sin(theta/2)) mat(-sin(theta/2); e^(i phi) cos(theta/2)) $
$ braket(psi, psi^') = -cos(theta/2) sin(theta/2) + sin(theta/2) cos(theta/2) $
$ braket(psi, psi^') = 0 $

Since the inner product of any two diametrically opposite states is $0$, we can conclude that diametrically opposite states on the Bloch sphere are orthogonal

*states are diametrically opposite on Bloch sphere $=>$ states are orthogonal*

Now, assume two orthogonal states $ ket(psi_1) = cos(theta_1/2) ket(0) + e^(i phi_1) sin(theta_1/2) ket(1) "and" ket(psi_2) = cos(theta_2/2) ket(0) + e^(i phi_2) sin(theta_2/2) ket(1) $
$ braket(psi_1, psi_2) = 0 $
$ mat(cos(theta_1/2), e^(- i phi_1) sin(theta_1/2)) mat(cos(theta_2/2); e^(i phi_2)sin(theta_2/2)) = 0 $
$ cos(theta_1/2) cos(theta_2/2) + e^i(phi_2 - phi_1) sin(theta_1/2) sin(theta_2/2) = 0 $
$ cos(theta_1/2) cos(theta_2/2) + (cos(phi_2-phi_1) + i sin (phi_2 - phi_1)) sin(theta_1/2) sin(theta_2/2) = 0 $
Since the imaginary part is $0$ on RHS, we have $sin(phi_2 - phi_1) = 0 => phi_2 = phi_1$
$ cos(theta_1/2) cos(theta_2/2) + cos(0) sin(theta_1/2) sin(theta_2/2) = 0 $
$ cos(theta_1/2) cos(theta_2/2) + sin(theta_1/2) sin(theta_2/2) = 0 $
$ cos((theta_1 - theta_2)/2) = 0 $
$ (theta_1 - theta_2)/2 = pi/2 $
$ theta_1 = pi + theta_2 $
*states are orthogonal $=>$ states are diametrically opposite on Bloch sphere*

Since we have proven both sides, we can assert

*states are diametrically opposite on Bloch sphere $<=>$ states are orthogonal*
= Question 5
*Given*: $ket(psi) = sum_(i=1)^n alpha_i ket(u_i)$ for some basis set ${ket(u_i)}_(i=1)^n$ and probability amplitudes $alpha_i in CC$

*To Prove*: $ket(psi)$ collapses to $ket(u_k)$ after measurement in the basis ${ket(u_i)}_(i=1)^n$ with probability $|alpha_k|^2$

*Proof*: Born rule states that the probability of a density operator $rho$ collapsing to state $ket(u_k)bra(u_k)$ is 
$ P = tr(ket(u_k)bra(u_k) rho) $

For the vector $psi$, we have state $rho = ket(psi)bra(psi)$

Now, we find the probability of $rho$ collapsing to $ket(u_k) bra(u_k)$

$ P = tr(ket(u_k) bra(u_k) ket(psi) bra(psi)) $
On using the cyclicity of trace
$ P = tr(braket(psi, u_k) braket(u_k, psi)) $
Since the matrix inside trace is $1 times 1$
$ P = braket(psi, u_k) braket(u_k, psi) $
$ P = overline(braket(u_k, psi)) braket(u_k, psi) $
$ P = |braket(u_k, psi)|^2 $
$ P = |bra(u_k) sum_(i=1)^n alpha_i ket(u_i)|^2 $
$ P = | sum_(i=1)^n alpha_i bra(u_k) ket(u_i)|^2 $
$ P = | sum_(i=1)^n alpha_i braket(u_k, u_i)|^2 $
Since $braket(u_i, u_j) = delta_(i j)$
$ P = | sum_(i=1)^n alpha_i delta_(k i)|^2 $
$ P = |alpha_k|^2 $

$therefore$ $ket(psi)$ collapses to $ket(u_k)$ after measurement in the basis ${ket(u_i)}_(i=1)^n$ with probability $|alpha_k|^2$

= Question 6
== (a)
$ ket(psi) = 1/sqrt(2) (ket(0) + i ket(1)) $
$ rho = ket(psi) bra(psi) $
$ rho = 1/2 mat(1; i)mat(1, -i) $
$ rho = 1/2 mat(1, -i; i, 1) $

Now, we find the probability of the state collapsing to $ket(1)$ in both formalisms
=== State Vector Formalism
$ Pr["state collapsing to" ket(1)] = |braket(1, psi)|^2 $
$ P = |1/sqrt(2) mat(0, 1) mat(1; i)|^2 $
$ P = 1/2|i|^2 $
$ P = 1/2 $
=== Density Matrix Formalism
$ Pr["state collapsing to" ket(1)bra(1)] = tr(ket(1) bra(1) rho) $
$ P = tr(1/2 mat(0; 1) mat(0, 1) mat(1, -i; i, 1)) $
$ P = 1/2 tr(mat(0, 0; 0, 1) mat(1, -i; i, 1)) $
$ P = 1/2 tr(mat(0, 0; i, 1)) $
$ P = 1/2 $

In both the formalisms, we get the required probability to be $1/2$

== (b)
=== State Vector Formalism
$ Pr["state collapsing to" ket(+i)] = |braket(+i, psi)|^2 $
$ P = |1/2 mat(1, -i) mat(1; i)|^2 $
$ P = |1/2 * 2|^2 $
$ P = 1 $
=== Density Matrix Formalism
$ Pr["state collapsing to" ket(+i)bra(+i)] = tr(ket(+i) bra(+1) rho) $
$ P = tr(1/4 mat(1; i) mat(1, -i) mat(1, -i; i, 1)) $
$ P = 1/4 tr(mat(1, -i; i, 1) mat(1, -i; i, 1)) $
$ P = 1/4 tr(mat(2, -2i; 2i, 2)) $
$ P = 1 $

$therefore$ the probability of getting $ket(+psi)$ when measuring in the basis ${ket(+psi), ket(-psi)}$ is 1