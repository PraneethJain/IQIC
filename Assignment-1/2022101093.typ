#align(center, text(17pt)[*Introduction to Quantum Information and Communication*])
#align(center, text(16pt)[Theory Assignment-1])
#align(center, text(13pt)[Moida Praneeth Jain, 2022101093])

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