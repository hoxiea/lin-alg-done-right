=== Chapter 2B
#let span = text("span")

1. Find all vector spaces that have exactly one basis.

#pad(left: 11pt)[
  Interesting. This isn't immediately obvious (I took about a month off between Chapters 1 and 2), but given that it's \#1, I suspect the answer will emerge pretty naturally once we have the relevant definitions in front of us.

  (1.20): A *vector space* is a set $V$ along with an addition on $V$ and a scalar multiplication on $V$ such that we have commutativity, associativity, an additive identity $0$, an additive inverse, a multiplicative identity, and distributivity of both scalars and vectors.

  (2.26): A *basis* of $V$ is a list of vectors in $V$ that is linearly independent and spans $V$.

  The smallest vector space is $V_0 = {0}$, i.e. the set containing just the additive identity. And the empty list is actually a valid basis for $V_0$, since it's (vacuously) linear independent (by 2.15) and (vacuously) spans $V_0$ (by 2.4). Since the empty list is unique, $V_0$ has exactly one basis.

  Any other vector space $V$ will have multiple bases, I'm afraid, due to the requirement that the vector space be closed under scalar multiplication: if list of vectors $v_1, dots, v_m$ forms a basis of $V$ (which is apparently $m$-dimensional), then $lambda v_1, dots, lambda v_m$ will also form a basis. 

  Thus, $V_0 = {0}$ is the only vector space that has exactly one basis.
]

#v(20pt)

2. Verify all assertions in Example 2.27.

#pad(left: 11pt)[
  a) Great, we all know that the _standard basis_ is very useful.

  b) The list $(1, 2), (3,5)$ is linearly independent, since neither vector is a scalar multiple of the other in this list of length two. And these two vectors span $FF^2$, since any $v = (x, y) in FF^2$ can be written uniquely in the form: $ vec(x, y) = a_1 vec(1,2) + a_2 vec(3, 5) ,$ where $a_1 = 3y - 5x$ and $a_2 = 2x-y$ is the unique solution to this system of two equations in two unknowns.

  c) The list $(1,2,-4), (7,-5,6)$ is definitely linearly independent in $FF^3$, since neither vector is a scalar multiple of the other in this list of length two. It definitely doesn't span $FF^3$ though - the length of the _standard basis_ in $FF^3$, which is linearly independent, is 3, meaning that any spanning list of $FF^3$ must have length $>= 3$ (by 2.22).

  d) The list $(1, 2), (3, 5), (4, 13)$ definitely spans $FF^2$ because a subset of the list, namely the first two vectors, spans $FF^2$, as we showed in (b). And it's definitely not independent, since we found a spanning list of length $2$, meaning that any linearly independent list must have length at most $2$.

  e) The list $(1,1,0), (0,0,1)$ is definitely linearly independent - neither is a scalar multiple of the other. And this list definitely spans ${(x,x,y) in FF^3 : x, y in FF}$, since any $v := (x,x,y)$ can be written uniquely as $x(1,1,0) + y(0,0,1)$. Thus, this list is a basis for the given vector space.

  f) The list $(1,-1,0), (1,0,-1)$ is definitely linearly independent: length two, neither is a scalar multiple of the other. As for spanning, $(x, y, z)$ with $x + y + z = 0$ can be formed uniquely as $alpha (1, -1, 0) + beta (1,0,-1)$ by letting $alpha = -y, beta = -z$. Thus, this list forms a basis.

  g) Great, we have a _standard polynomial basis_ too.
]

#pagebreak()

3. Let $U$ be the subspace of $RR^5$ defined by $U = {(x_1, x_2, x_3, x_4, x_5) in RR^5: x_1 = 3x_2, x_3 = 7 x_4}$.

#pad(left: 11pt)[
  a) Find a basis of $U$.

  The list $(3,1,0,0,0), (0,0,7,1,0), (0,0,0,0,1)$ is a basis of $U$. It is clearly linearly independent, due to the non-overlapping indices of the non-zero elements. And it also spans $U$: for any vector $v = (x_1, x_2, x_3, x_4, x_5) in U$, we will have unique coefficients that achieve $v$ is a linear combination:
  
  $ v =  x_2(3,1,0,0,0) + x_4(0,0,7,1,0) + x_5(0,0,0,0,1) $ 

  b) Extend the basis in (a) to a basis of $RR^5$.

  This extension will involve adding two more vectors to the list, since $RR^5$'s standard basis has length 5. In order to give ourselves the flexibility to reach an arbitrary $v in RR^5$, add $(1,0,0,0,0)$ and $(0,0,1,0,0)$. This will give us the ability to decouple the first and second elements and the third and fourth elements, respectively.

  c) Find a subspace $W$ of $RR^5$ such that $RR^5 = U xor W$.

  Clearly, this subspace will give us the flexibility we described in (b). In particular, let $W = {(x,0,y,0,0) in RR^5}$. Then $RR^5 = U xor W$, as desired.
]

#v(15pt)

4. Let $U$ be the subspace of $CC^5$ defined by $ U = {(z_1, z_2, z_3, z_4, z_5) in CC^5 : 6z_1 = z_2, z_3 + 2 z_4 + 3 z_5 = 0}. $ 

#pad(left: 13pt)[
  a) Find a basis of $U$.

  Well, vector $(1, 6, 0,0,0)$ will satisfy the first constraint. The second constraint means that vectors $(0,0,-2,1,0)$ and $(0,0,-3,0,1)$ should join the list.

  b) Extend the basis in (a) to a basis of $CC^5$.

  Clearly, we need two more vectors. $(0,1,0,0,0)$ and $(0,0,1,0,0)$ will give us the extra flexibility needed to cover all of $CC^5$.

  c) Find a subspace $W$ of $CC^5$ such that $CC^5 = U xor W$.

  Inspired by the flexibility we gained in (b), let $W = {(0,z_2, z_3, 0,0) in CC^5 : z_2, z_3 in CC}$. 
]

#v(15pt)

*NOTE*: I realize that I haven't really rigorously proved anything in \#3 or \#4. I appreciated these exercises for their ability to get me thinking about the relationships between dimension, bases, subspaces, etc. in real, concrete settings, which I believe was the point of them. Real proofs coming in later exercises!

#pagebreak()

5. Suppose $V$ is finite-dimensional and $U,W$ are subspaces of $V$ such that $V = U + W$. Prove that there exists a basis of $V$ consisting of vectors in $U union W$.

#pad(left: 14pt)[
  Since $V$ is finite-dimensional, it has a basis (2.31). 

  By definition of _subspace sums_, $V = U + W = {u + w: u in U, w in W}$. In other words, $V$ consists of a vector space of vectors that are formed via every possible sum of vectors from $U$ and $W$. But this is why there's something interesting to prove here: $U union W$ consists of vectors that are in $U$ or $W$ (or both), but aren't necessarily sums of vectors from these two subspaces.

  I think we can prove this directly via construction. By 2.25, $U$ and $W$ are finite-dimensional. By 2.31, $U$ and $W$ each have a basis. Let $u_1, dots, u_m$ and $w_1, dots, w_n$ be a basis for $U$ and $W$, respectively. Then the list $u_1, dots, u_m, w_1, dots, w_n$ must span $V$. 
  
  To confirm this, note that any $v in V$ must have been formed as the sum of some $u in U, w in W$ by our definition of subspace sums above. And by definition of basis, $u in span(u_1, dots, u_m)$  and $w in span(w_1, dots, w_n)$. The linear combinations of $u_1, dots, u_m$ and $w_1, dots, w_n$ that produce $u$ and $w$, respectively, will sum to form $v$, since $v = u + w$.

  But with this spanning list for $V$ consisting of vectors from $U$ and $W$, we're done! Because by 2.30, this spanning list can be reduced to a basis of $V$. And since our list consists of vectors in $U union W$, removing vectors from it won't change the fact that it consists of vectors in $U union W$. $qed$
]

#v(15pt)

6. Prove or give a counterexample: If $p_0, p_1, p_2, p_3$ is a list in $P_3(FF)$ such that none of the polynomials $p_0, p_1, p_2, p_3$ has degree 2, then $p_0, p_1, p_2, p_3$ is not a basis of $P_3(FF)$.

#pad(left:14pt)[
  This is actually false because _degree_ refers to the _highest_ power of the polynomial. 
  
  Consider the list of polynomials 1, $x$, $x^2 + x^3$, $x^3$. This is a list in $P_3(FF)$ such that none of the polynomials has degree 2; the degrees are 0, 1, 3, and 3, respectively.

  But this list _is_ a basis of $P_3(FF)$. Given $p in P_3(FF)$, $p = a_0 + a_1x + a_2 x^2 + a_3 x^3$, we will have $ p = a_0 1 + a_1 x +a_2 (x^2 + x^3) + (a_3 - a_2) x^3. $

  Thus, $p in span(p_0, p_1, p_2, p_3)$. And this list is definitely linearly independent, due to the offsets of the powers. Thus, this list forms a basis of $P_3(FF)$, completing the counter-example.
]

#pagebreak()

7. Suppose $v_1, v_2, v_3, v_4$ is a basis of $V$. Prove that $ v_1 + v_2, v_2 + v_3, v_3 + v_4, v_4 $ is also a basis of $V$.

#pad(left: 14pt)[
  We know by definition of _basis_ that $v_1, v_2, v_3, v_4$ are linearly independent and span $V$. And for any $v in V$, there exist unique coefficients in $FF$ such that $v = a_1 v_1 + a_2 v_2 + a_3 v_3 + a_4 v_4$.

  To make our lives easier, let us give names to these new vectors we wish to prove are a basis of $V$, and let us relate $v_1, v_2, v_3, v_4$ and our new vectors in both directions:

  #align(center)[
    #grid(
      columns: 2,
      gutter: 8em,
      $
        u_1 &= v_1 + v_2  &\
        u_2 &= v_2 + v_3 &\
        u_3 &= v_3 + v_4 &\
        u_4 &= v_4
      $,
      $
        v_1 &= u_1 - u_2 + u_3 - u_4 &\
        v_2 &= u_2 - u_3 + u_4 &\
        v_3 &= u_3 - u_4 &\
        v_4 &= u_4
      $

    )
 ]

  Are the $u$'s linearly independent and do they span $V$?

  To establish linearly independence, consider the equation $ b_1 u_1 + b_2 u_2 + b_3 u_3 + b_4 u_4 = 0.$ By substition, this is equivalent to $ b_1(v_1 + v_2) + b_2(v_2 + v_3) + b_3(v_3 + v_4) + b_4 v_4 = 0 .$ Distributing and regrouping, we obtain:
  $
    b_1v_1 + (b_1 + b_2)v_2 + (b_2 + b_3)v_3 + (b_3 + b_4)v_4 = 0.
  $
  By the linear independence of the $v$'s, we know that these coefficients must all be zero. Working from left to right, this implies that $b_1 = 0 => b_2 = 0 => b_3 = 0 => b_4 = 0$, as required for linear independence.

  To show that $V = span(u_1, u_2, u_3, u_4)$, take $v in V$. Then there exist unique coefficients in $FF$ such that $v = a_1 v_1 + a_2 v_2 + a_3 v_3 + a_4 v_4$. By substitution, we obtain
  $
    v &= a_1 (u_1 - u_2 + u_3 - u_4) + a_2(u_2 - u_3 + u_4) + a_3 (u_3 - u_4) + a_4 u_4 &\
      &= a_1 u_1 + (a_2 - a_1)u_2 + (a_3 - a_2 + a_1)u_3 + (a_4 - a_3 + a_2 - a_1)u_4.
  $
  Thus, there are also unique coefficients such that $v$ is a linear combination of the $u$'s, meaning $V = span(u_1, u_2, u_3, u_4)$. And thus, vectors $u_1, u_2, u_3, u_4$ form a basis of $V$, as desired. $qed$
]

#pagebreak()

8. Prove or give a counterexample: If $v_1, v_2, v_3, v_4$ is a basis of $V$ and $U$ is a subspace of $V$ such that $v_1, v_2 in U$ and $v_3 in.not U$ and $v_4 in.not U$, then $v_1, v_2$ is a basis of $U$.

#pad(left: 14pt)[
  I didn't have a great intuition for this problem, going into it. On the one hand, it's not crazy to think that $v_1, v_2$ could form a basis of $U$. But the fear is that something in $v_3$ or $v_4$ "helps", and we're losing access to that help by excluding these last two vectors.

  Still, I tried to prove this by counterexample:

  Let $v_1, v_2, v_3, v_4$ be a basis of $V$. Let $U$ be a subspace of $V$ such that $v_1, v_2 in U$ and $v_3 in.not U$ and $v_4 in.not U$.

  Suppose to the contrary that $v_1, v_2$ is _not_ a basis of $U$. 
  
  Then by definition of _basis_, this list is either linearly dependent or it doesn't span $U$. But since the larger list $v_1, v_2, v_3, v_4$ is a basis of $V$ and is therefore linearly independent, the shorter list $v_1, v_2$ will also be linearly independent; thus, it must be the case that $v_1, v_2$ doesn't span $U$.

  This means there exists some $u in U$ such that $v_1, v_2$ cannot "reach" $u$ via linear combination. But $u in V$ too, since $U$ is a subspace of $V$. Thus, there exist unique coefficients such that 
  $
    u = a_1 v_1 + a_2 v_2 + a_3 v_3 + a_4 v_4.
  $

  Since $v_1, v_2$ cannot reach $u$, we know that $a_3 != 0$ or $a_4 != 0$ (or both). This doesn't obviously produce a contradiction, and seems to suggest that sure enough, $v_3$ and/or $v_4$ are helping $v_1$ and $v_2$ with their spanning duties.

  Having hit that head end, let's try to find a counter-example. Since our basis has length four, let $V = RR^4$. For our basis, use the standard basis $(1,0,0,0), (0,1,0,0), (0,0,1,0), (0,0,0,1)$. And for our subspace, let $U = {(x,y,z,z): x,y,z in RR}$. Then $v_1, v_2 in U$, $v_3 in.not U$, $v_4 in.not U$. But $v_1, v_2$ definitely doesn't form a basis for $U$, since there's no way to achieve non-zero values for the last two coordinates with just the first two standard basis vectors. Thus, we have our counterexample! $qed$
]

#pagebreak()

9. Suppose $v_1, dots, v_m$ is a list of vectors in $V$. For $k in {1, dots, m}$, let $ w_k = v_1 + dots + v_k. $ Show that $v_1, dots, v_m$ is a basis of $V$ if and only if $w_1, dots, w_m$ is a basis of $V$.

#pad(left: 13pt)[
  As we often do in these problems, let's write out these vectors in terms of the others:

  #align(center)[
    #grid(
      columns: 2,
      gutter: 8em,
      $
        w_1 &= v_1 &\
        w_2 &= v_1 + v_2 &\
        &dots &\
        w_m &= v_1 + v_2 + dots + v_m
      $,
      $
        v_1 &= w_1 &\
        v_2 &= w_2 - w_1 &\
        &dots &\
        v_m &= w_m - w_(m-1) &\
      $
    )
  ]

  $(arrow.r)$ $v_1, dots, v_m$ is a basis of $V$ $=>$ $w_1, dots, w_m$ is a basis of $V$

  Let $v_1, dots, v_m in V$ be a basis of $V$. By definition, this list is linearly independent, and $V = span(v_1, dots, v_m)$. We can use these facts to show that $w_1, dots, w_m$ is also a basis:

  - Linearly independent: Consider the equation $a_1 w_1 + dots + a_m w_m = 0$. By substitution and the left column above, this is true iff $a_1 v_1 + a_2 (v_1 + v_2) + dots + a_m (v_1 + dots + v_m) = 0$. Distributing and regrouping, we have $(a_1 + dots + a_m) v_1 + dots + a_m v_m = 0$. By the linear independence of the $v$'s, these coefficients must all be zero. From right to left, as it always does, we get $a_m = 0 => a_(m-1) = 0 => dots => a_1 = 0$, as required for linear independence of the $w$'s.

  - Spans: For $v in V$, there must exist unique coefficients such that $v = b_1 v_1 + dots + b_m v_m$, since the $v$'s span $V$. By substition and the right column above, this is true iff $ v &= b_1 w_1 + b_2 (w_2 - w_1) + dots + b_m (w_m - w_(m-1)) &\ &= (b_1 - b_2)w_1 + (b_2 - b_3)w_2 + dots + b_m w_m. $ Hooray, we've found unique coefficients for the $w$'s to reach $v$, thus $V = span(w_1, dots, w_m)$.

  #v(10pt)

  $(arrow.l)$ $w_1, dots, w_m$ is a basis of $V$ $=>$ $v_1, dots, v_m$ is a basis of $V$

  Let $w_1, dots, w_m in V$ be a basis of $V$. By definition, this list is linearly independent, and $V = span(w_1, dots, w_m)$. We can use these facts to show that $v_1, dots, v_m$ is also a basis:
  
  - Linearly independent: Consider the equation $a_1 v_1 + dots + a_m v_m = 0$. By substitution and the right column above, this is true iff $a_1 w_1 + a_2 (w_2 - w_1) + dots + a_m (w_m - w_(m-1)) = 0$. Distributing and regrouping, we have $(a_1 - a_2) w_1 + dots + a_m w_m = 0$. By the linear independence of the $w$'s, these coefficients must all be zero. From right to left, as it always does, we get $a_m = 0 => a_(m-1) = 0 => dots => a_1 = 0$, as required for linear independence of the $v$'s.

  - Spans: For $v in V$, there must exist unique coefficients such that $v = b_1 w_1 + dots + b_m w_m$, since the $w$'s span $V$. By substition and the left column above, this is true iff $ v &= b_1 v_1 + b_2 (v_1 + v_2) + dots + b_m (v_1 + dots + v_m) &\ &= (b_1 + dots + b_m)v_1 + (b_2 + dots + b_m)v_2 + dots + b_m v_m. $ Hooray, we've found unique coefficients for the $v$'s to reach $v$, thus $V = span(v_1, dots, v_m)$. $qed$
]

#pagebreak()

10. Suppose $U$ and $W$ are subspaces of $V$ such that $V = U xor W$. Suppose also that $u_1, dots, u_m$ is a basis of $U$ and $w_1, dots, w_n$ is a basis of $W$. Prove that $ u_1, dots, u_m, w_1, dots, w_n $ is a basis of $V$.

#pad(left: 18pt)[
  Let $U$ and $W$ be subspaces of $V$ such that $V = U xor W$. 
  
  Let $u_1, dots, u_m$ be a basis of $U$ and $w_1, dots, w_n$ be a basis of $W$.
  
  For $v in V$, by definition of $xor$, there exist unique vectors $u in U, w in W: v = u + w$. 
  
  Since we have our basis vectors for $U$ and $W$, there must exist unique coefficients such that $u = a_1 u_1 + dots + a_m u_m$ and $w = b_1 w_1 + dots + b_n w_n$. By substitution, we will therefore have 
  $
    v = a_1 u_1 + dots + a_m u_m + b_1 w_1 + dots + b_n w_n.
  $

  Thus, $v$ has a unique representation of the vectors $u_1, dots, u_m, w_1, dots, w_n$. And thus, by 2.28, $u_1, dots, u_m, w_1, dots, w_n$ is a basis for $V$, as desired. $qed$
]

11. Suppose $V$ is a real vector space. Show that if $v_1, dots, v_n$ is a basis of $V$ (as a real vector space), then $v_1, dots, v_n$ is also a basis of the complexification $V_C$ (as a complex vector space).

#pad(left: 18pt)[
  Let $V$ be a real vector space, and let $v_1, dots, v_n$ be a basis of $V$.

  Referring back to the referenced problem for the definition of _complexification_, let $V_C = V times V$. In other words, any element $z in V_C$ is an ordered pair $(u, v)$ with $u, v in V$. (Recall that we often write this ordered pair as $u + v i$ when considering it a complex number.)

  Take $z in V_C$. We'd like to show that there exist unique coefficients s.t. $z = c_1 v_1 + dots + c_n v_n$.

  By definition of $V_C$, $z = (u, v)$ with $u, v in V$. Since $v_1, dots, v_n$ forms a basis for $V$, there must exist unique coefficients such that 
  $
    u &= a_1 v_1 + dots + a_n v_n &\
    v &= b_1 v_1 + dots + b_n v_n &\
  $
  Therefore, we have:
  $
    z &= u + v i &\
      &= (a_1 v_1 + dots + a_n v_n) + (b_1 v_1 + dots + b_n v_n) i &\
      &= (a_1 + b_1 i) v_1 + dots + (a_n + b_n i) v_n &\
      &= c_1 v_1 + dots + c_n v_n
  $
  Since the $a$'s and $b$'s were unique, the $c$'s will be unique, completing the proof. $qed$

]