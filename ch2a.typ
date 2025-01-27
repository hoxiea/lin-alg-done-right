=== Chapter 2A
#let span = text("span")

1. Find a list of four distinct vectors in $FF^3$ whose span equals

$
  {(x, y, z) in FF^3: x + y + z = 0}.
$


#pad(left: 11pt)[
  After thinking about this for a few minutes (I took a few weeks off for my honeymoon after finishing Chapter 1), it occurred to me that four distinct vectors in $FF^3$ that have the desired property (namely, that the sum of their elements is zero) should have a span equal to the vector space of all vectors with the desired property.

  Thus, take: $(1, -1, 0), (1, 0, -1), (0, 1, -1), (2, -1, -1)$.

  These four vectors are certainly distinct. And they certainly belong to $FF^3$, since $FF$ is either $RR$ or $CC$ and these could be interpreted as either real numbers or as complex numbers of the form $a + 0i$. 

  To show that their span is as desired, take #box[$(x, y, z) in FF^3: x + y + z = 0$]. Then there must exist $a_1, a_2, a_3, a_4 in FF$ such that 

  $
    vec(x, y, z) = a_1 vec(1, -1, 0) + a_2 vec(1, 0, -1) + a_3 vec(0, 1, -1) + a_4 vec(2, -1, -1).
  $

  This produces the following system, in which we want to show that the $a_i$s must exist:

  $
    x &= a_1 + a_2 + 2 a_4 & \
    y &= -a_1+a_3-a_4 & \
    z &= -a_2 - a_3 -a_4
  $

  But since we have four vectors in a space that feels two-dimensional ($FF^3$ has three dimensions, but once you've selected $x$ and $y$, $z$ is already determined if $x + y + z = 0$), I think we can safely set $a_4$ to be zero and still obtain a solution. This simplifies the system:

  $
    x &= a_1 + a_2 & \
    y &= -a_1+a_3& \
    z &= -a_2 - a_3 
  $

  Summing both sides of these equations yields $x + y + z = 0$. And given $x, y, z$, we can solve for the $a_i$s as follows:

  - Choose $a_3 = 1$  (arbitrary) and set $a_4 = 0$
  - $a_1 = 1 - y$
  - $a_2 = -z - 1$

  The arbitrariness of $a_3 = 1$ and my observation that our target subspace feels two-dimensional makes me tempted to set $a_3 = 0$ as well. In this case, our system simplifies even further:

  $
    x &= a_1 + a_2 & \
    y &= -a_1 & \
    z &= -a_2 
  $

  This suggests that $a_1 = -y, a_2 = -z, a_3 = 0, a_4 = 0$ also works.

  Thus, by definition of span, the span of these four vectors is the desired subspace of $FF^3$. $qed$
]

#pagebreak()

2. Prove or give a counterexample: If $v_1, v_2, v_3, v_4$ spans $V$, then the list 

$
  v_1 - v_2, v_2 - v_3, v_3 - v_4, v_4
$

#pad(left: 11pt)[
also spans $V$.

#v(10pt)

At first glance, this doesn't seem like an unreasonable claim. For example, I notice that our four original vectors can be obtained as linear combinations of the new four vectors, thanks to the "telescoping" construction of these new vectors:

$
  v_1 &= 1 (v_1 - v_2) + 1 (v_2 - v_3) + 1 (v_3 - v_4) + 1v_4 &\
  v_2 &= 0 (v_1 - v_2) + 1 (v_2 - v_3) + 1 (v_3 - v_4) + 1v_4 &\
  v_3 &= 0 (v_1 - v_2) + 0 (v_2 - v_3) + 1 (v_3 - v_4) + 1v_4 &\
  v_4 &= 0 (v_1 - v_2) + 0 (v_2 - v_3) + 0 (v_3 - v_4) + 1v_4 &\
$

This is hardly a conclusive proof. But it does suggest that for any $v in V$, just as there exists a linear combination of $v_1 dots v_4$ that equals $v$ (by definition of  $v_1 dots v_4$ spanning $V$), there could also be a linear combination of $v_1 - v_2, v_2 - v_3, v_3 - v_4, v_4$ that would equal $v$, making our new list a spanning list, as desired.

Let's formalize these observations into a more formal proof. 

Take $v in V$. By definition of $v_1, v_2, v_3, v_4$ spanning $V$, there exist coefficients $a_1, a_2, a_3, a_4 in FF$ such that $a_1 v_1 + a_2 v_2 + a_3 v_3 + a_4 v_4 = v$. We'd like to show that there exist coefficients $b_1, b_2, b_3, b_4$ such that

$
  b_1 (v_1 - v_2) + b_2(v_2 - v_3) + b_3(v_3 - v_4) + b_4 v_4 = v.
$

The "telescoping" relationships above actually show us how to find $b_1 dots b_4$ as a function of $a_1 dots a_4$. By substitution, we have: 

$
  a_1 v_1 &= a_1 (1 (v_1 - v_2) + 1 (v_2 - v_3) + 1 (v_3 - v_4) + 1 v_4) &\
  a_2 v_2 &= a_2 (0 (v_1 - v_2) + 1 (v_2 - v_3) + 1 (v_3 - v_4) + 1 v_4) &\
  a_3 v_3 &= a_3 (0 (v_1 - v_2) + 0 (v_2 - v_3) + 1 (v_3 - v_4) + 1 v_4) &\
  a_4 v_4 &= a_4 (0 (v_1 - v_2) + 0 (v_2 - v_3) + 0 (v_3 - v_4) + 1 v_4) &\
$

The sum of the LHSs equals $v$ by assumption. Thus, the sum of the RHSs must also equal $v$. And by considering this RHS sum, we can see the coefficients that appear on our four new vectors:

- $v_1 - v_2$ has coefficient $a_1$, since only one $v_1 - v_2$ term has a non-zero coefficient
- $v_2 - v_3$ has coefficient $a_1 + a_2$, from the top two lines
- $v_3 - v_4$ has coefficient $a_1 + a_2 + a_3$, from the top three lines
- $v_4$ has coefficient $a_1 + a_2 + a_3 + a_4$, from all four lines

Thus, we have found the coefficients for our linear combination: $
b_1 = a_1, b_2 = a_1 + a_2, b_3 = a_1 + a_2 + a_3, b_4 = a_1 + a_2 + a_3 + a_4.
$

And since arbitrary $v in V$ can be written as a linear combination of this new list, this new list of vectors must span $V$. $qed$

]

#pagebreak()

3. Suppose $v_1, dots, v_m$ is a list of vectors in $V$. For $k in {1, dots, m}$ let $ w_k = v_1 + dots + v_k . $ 
#pad(left: 11pt)[

Show that $span(v_1, dots, v_m) = span(w_1, dots, w_m)$.

#v(10pt)

This is similar to \#2, except we're constructing our new collection of vectors a bit differently, the size of the collection is now arbritrary, and we need to go in both directions. 

Just to help me visualize the relationship between the $v_i$s and $w_i$s, we have:

$
  w_1 &= v_1 &\
  w_2 &= v_1 + v_2 &\
  &dots &\
  w_m &= v_1 + v_2 + dots + v_m
$

Off we go...

$span(v_1, dots, v_m) supset.eq span(w_1, dots, w_m)$

#pad(left: 11pt)[
Take $v in $ span($w_1, dots, w_m$). Then there exist coefficients $b_1 dots b_m$ such that $v = sum_(i=1)^m b_i w_i$ by definition of _span_. By the same argument we used for \#2, we thus have:
$
  b_1 w_1 &= b_1 v_1 &\
  b_2 w_2 &= b_2 (v_1 + v_2) &\
  &dots &\
  b_m w_m &= b_m (v_1 + v_2 + dots + v_m)
$

Since $v$ equals the sum of the LHSs, it must equal the sum of the RHSs. And thus, by inspection, we can read off the coefficients $a_i$ for each $v_i$ such that $v = sum_(i=1)^m a_i v_i$:

$
a_m = b_m, a_(m-1) = b_m + b_(m-1), dots, a_1 = sum_(i=1)^m b_i
$

In other words, taking $a_k = sum_(i=k)^m b_i$, we will have $v = sum_(i=1)^m a_i v_i$ as required for $v$ to be in $span(v_1, dots, v_m)$, as desired.
]

$span(v_1, dots, v_m) subset.eq span(w_1, dots, w_m)$

#pad(left: 11pt)[
Take $v in span(v_1, dots, v_m)$. Then there exist coefficients $a_1 dots a_m$ such that $v = sum_(i=1)^m a_i v_i$ by definition of _span_. To find the coefficients $b_i$ for each $w_i$ such that $v = sum_(i=1)^m b_i w_i$, we must work a bit harder than we did in the other direction because we don't have $v_i$ in terms of the $w$ vectors. We can, however, find these relationships by doing some algebra from the top down:

$
  v_1 &= w_1 &\
  v_2 &= w_2 - v_1 = w_2 - w_1 &\
  v_3 &= w_3 - v_1 - v_2 = w_3 - w_1 - (w_2 - w_1) = w_3 - w_2\
  &dots &\
  v_m &= w_m - w_(m-1)
$

We are now back in familiar territory, and can use the same argument we used above:

$
  a_1 v_1 &= a_1 w_1 &\
  a_2 v_2 &= a_2 (w_2 - w_1) &\
  &dots &\
  a_m v_m &= a_m (w_m - w_(m-1)) &\
$
By summing the LHS and RHS and inspecting the coefficients that emerge for each $w_i$, we have:

$
  b_1 = a_1 - a_2, b_2 = a_2 - a_3, dots, b_m = a_m
$

In other words, taking $b_k = a_k - a_(k+1)$ for $k in {1, dots, m - 1}$ and $b_m = a_m$ will mean that $v = sum_(i=1)^m b_i w_i$, meaning that $v in  span(w_1, dots, w_m)$, as desired.

]

Since both spans are subsets of each other, they must be equal, completing the proof. $qed$
]

#v(10pt)

4a) Show that a list of length one in a vector space is linearly independent if and only if the vector in 
the list is not $0$.

#pad(left: 11pt)[
($arrow.r$) Let $v$ form a linearly independent list of length one in vector space $V$. Assume, to the contrary, that $v = 0$. Then by 2.17, the list $v$ would be linearly dependent because there exists an $a in FF, a != 0$ such that $a v = 0$... any $a$ will do, by definition of $0$! But this contradicts our assumption that the list is linearly independent, impling that $v != 0$.

($arrow.l$) Let $v$ be a non-zero vector in $V$, forming a list of length one. Assume, to the contrary, that this list is linearly dependent. Then by 2.17, there must exist an $a in FF, a != 0$ such that $a v = 0$. But since $a != 0$, by 1.5 there must exist a multiplicative inverse $1/a$ such that $1/a (a) = 1$. Multiplying both sides of $a v = 0$ by this inverse, we have $1/a a v = 1 / a 0 => v = 0$. But this contradicts our assumption that $v != 0$. Thus, this list must be linearly independent, as desired. $qed$
]

#v(10pt)

4b) Show that a  list of length two in a vector space is linearly independent if and only if neither of 
the two vectors in the list is a scalar multiple of the other. 

#pad(left: 11pt)[
($arrow.r$) Let list of length two $u, v in V$ be linearly independent. Assume, to the contrary, that one vector is a scalar multiple of the other, i.e. that there exists some $alpha in FF$ such that $alpha u = v$. (Note that the direction here is arbitrary:  $alpha u = v <=> u = 1 / alpha v$.)

Then for $a = -alpha, b = 1$, we will have $a u + b v = -alpha u + 1 v = -v + v = 0$. Thus, by 2.17, these two vectors would be linearly dependent, a contradiction. Thus, it must be that these two vectors are not scalar multiples of each other, as desired.

($arrow.l$) Let $u, v in V$ form a list of length two such that neither vector is a scalar multiple of the other. Assume, to the contrary, that this list is linearly dependent. Then by 2.17, there must exist $a, b in FF$, not both $0$, such that $a u + b v = 0$. Since $a, b$ are not both zero, there are three cases to consider:

1. $a != 0, b != 0$. Then $a u = - b v <=> u = -b / a v$, i.e. $u$ is a scalar multiple of $v$. 
2. $a = 0, b != 0$. Since $0 u = 0$, we must have $b v = 0$. And $b != 0$ implies $v = 0$, meaning that $0 u = v$, i.e. $u$ is a scalar multiple of $v$.
3. $a != 0, b = 0$. Since $0 v = 0$, we must have $a u = 0$. And $a != 0$ implies $u = 0$, meaning that $0 v = u$, i.e. $v$ is a scalar multiple of $u$.

All three cases lead to these two vectors being scalar multiples of each other, a contradiction. Thus, this list must be linearly independent, as desired. $qed$
]

#pagebreak()

5. Find a number $t$ such that 
$
  (3,1,4), (2,-3,5), (5,9,t)
$
#pad(left: 11pt)[
is not linearly independent in $RR^3$.

If, for the proper choice of $t$, this list is not linearly independent, then it must be linearly dependent. By 2.19, this means that the last vector must be in the span of the first two, i.e.
$
  a vec(3,1,4) + b vec(2,-3,5) = vec(5,9,t).
$

The first two components give us a system of two equations in two unknowns:
$
  3a + 2b &= 5 &\
  1a-3b &= 9 &\
$

This system has unique solution $a = 3, b = -2$. We can use this solution and the third component to find $t$: $3(4)-2(5) = t$, meaning $bold(t = 2)$.

To verify that this list with $t=2$ is linearly dependent, we can appeal to 2.17 with non-zero constants:
$
  3 vec(3,1,4) - 2 vec(2,-3,5) - vec(5,9,2) = 0.
$
$qed$
]

#pagebreak()

6. Show that the list $(2,3,1), (1,-1,2), (7,3,c)$ is linearly dependent in $FF^3$ if and only if $c=8$.
#pad(left: 11pt)[
  $(arrow.r)$ Suppose this list is linearly dependent. Then by the same process we used in \#5, we can find $c$ by concluding that the third vector must be in the span of the first two. This produces the following system of equations:

  $
    2a + b &= 7 &\
    3a-b&=3 &\
  $

  This system has unique solution $a=2,b=3$. We can use this solution to find $c$: $2(1)+3(2) = c$, giving us $c=8$, as desired.

  $(arrow.l)$ Let $c = 8$. Then the list $(2,3,1), (1,-1,2), (7,3,8)$ is linearly dependent by 2.17 because

  $
    2 vec(2,3,1)+3 vec(1,-1,2)-vec(7,3,8) = 0
  $
  and the scalars $2, 3, -1$ are not all zero. $qed$
]

#v(15pt)

7a. Show that if we think of $CC$ as a vector space over $RR$, then the list $1 + i, 1 - i$ is linearly independent.

#pad(left: 11pt)[

  Thinking of $CC$ as a vector space over $RR$, we are essentially considering the list $(1,1), (1,-1) in RR^2$. And if we consider the equation

  $
    a vec(1,1) + b vec(1,-1) = 0,
  $
  
  we obtain a system of two equations in two unknowns:
  $
    a + b &= 0 &\
    a - b &= 0 &\
  $

  Solving this system, we find a unique solution: $a = b = 0$. Thus, by 2.15, this list is linearly independent, as desired. $qed$

]

7b. Show that if we think of $CC$ as a vector space over $CC$, then the list $1 + i, 1 - i$ is linearly dependent.

#pad(left: 11pt)[
  The key difference here, now that we're working over $CC$, is that now our scalars can be complex numbers. By 2.17, it would be sufficient to show that there exist $a, b in CC$, not both zero, such that $a(1+i) + b(1 - i) = 0$. That's straightforward to do: take $a = 1$ and then solve for $b = (-(1+i)) / (1-i) in CC$. Thus, we have found the required $a, b in CC$, meaning that this list is linearly dependent. 
  $qed$

]

#pagebreak()

8. Suppose $v_1, v_2, v_3, v_4$ is linearly independent in $V$. Prove that the list 
$
  v_1 - v_2, v_2 - v_3, v_3 - v_4, v_4
$
#pad(left: 11pt)[
is also linearly independent.

This looks familiar! Call the vectors in this new list $u_1, u_2, u_3, u_4$ respectively. Then note that
$
  v_1 &= u_1 + u_2 + u_3 + u_4 &\
  v_2 &= u_2 + u_3 + u_4 &\
  v_3 &= u_3 + u_4 &\
  v_4 &= u_4 &\
$

Solving for these new vectors in terms of the old ones, we therefore get:
$
  u_4 &= v_4 &\
  u_3 &= v_3 - v_4 &\
  u_2 &= v_2 - v_3 &\
  u_1 &= v_1 - v_2 &\
$

Since $v_1, v_2, v_3, v_4$ are linearly independent, the only solution to $a_1 v_1 + a_2 v_2 + a_3 v_3 + a_4 v_4 = 0$ must be $a_1 = a_2 = a_3 = a_4 = 0$ by 2.15.

Now consider the equation $b_1 u_1 + b_2 u_2 + b_3 u_3 + b_4 u_4 = 0$. By substitution, this is equivalent to 
$
  b_1 (v_1 - v_2) + b_2 (v_2 - v_3) + b_3 (v_3 - v_4) + b_4 v_4 = 0.
$ 

By rearranging terms, we have:
$
  b_1 v_1 + (b_2 - b_1)v_2 +(b_3 - b_2)v_3+(b_4 - b_3) v_4 = 0.
$

Since we're back to working with $v$'s, it must therefore be the case that $b_1 = 0, b_2 - b_1 = 0, b_3 - b_2 = 0, b_4 - b_3 = 0$ will provide the only solution to this equation. This implies that $b_1 = b_2 = b_3 = b_4 = 0$, establishing linear independence of $u_1, u_2, u_3, u_4$, as desired. $qed$
]

#pagebreak()

9. Prove or give a counterexample: If $v_1, v_2, dots, v_m$ is a linearly independent list of vectors in $V$, then $ 5v_1 - 4v_2, v_2, v_3, dots, v_m $ is linearly independent.

#pad(left: 12pt)[
  Intuitively, this feels as though it should be linearly independent. By the linear independence of the original list, $v_1$ cannot be written as a linear combination of $v_2, dots, v_m$. And I don't think that the construction $5 v_1 - 4v_2$ can somehow introduce linear dependence. Let's prove that formally.

  Let $v_1, dots, v_m$ be a linearly independent list of vectors in $V$. Let $u_1, dots, u_m$ denote our new list of vectors: $u_1 = 5v_1 - 4v_2$ and $u_j = v_j, j in {2, dots, m}$. Consider the equation
  $
    a_1 u_1 + a_2 u_2 + dots + a_m u_m = 0.
  $

  By substitution, this can be rewritten
  $
    a_1 (5v_1 - 4v_2) + a_2 v_2 + dots + a_m v_m = 0.
  $

  Distributing $a_1$ and combining like terms, we obtain 
  $
    5 a_1 v_1 + (a_2 - 4 a_1) v_2 + dots + a_m v_m = 0.
  $

  By the linear independence of the $v$'s and 2.15, the only choice of coefficients that will make this equation hold are all zeros. Thus, we must also have:
  - $5 a_1 = 0 => a_1 = 0$ from the $v_1$ term
  - $=> a_2 - 4(0) = 0 => a_2 = 0$ from the $v_2$ term
  - $a_j = 0, j in {3, dots, m}$
  Thus, the only coefficients that will make our original linear combination of $u$'s equal 0 are all zeros, satisfying the condition for linear independence of 2.15, as desired. $qed$
]

#pagebreak()

10. Prove or give a counterexample: If $v_1, v_2, dots, v_m$ is a linearly independent list of vectors in $V$ and $lambda in FF$ with $lambda != 0$, then $lambda v_1, lambda v_2, dots, lambda v_m$ is linearly independent.

#pad(left: 17pt)[
  Intuitively, this is almost surely true - multiplying a collection of linearly independent vectors by a (nonzero) scalar shouldn't somehow introduce a linear dependence! Let's prove it.

  Let $v_1, dots, v_m$ be a linearly independent list of vectors in $V$. Consider the equation
  $
    a_1 v_1 + a_2 v_2 + dots + a_m v_m = 0.
  $

  By definition of linear independence, we know that all $a$'s must be zero.

  Now consider the equation
  $
    a_1 lambda v_1 + a_2 lambda v_2 + dots + a_m lambda v_m = 0,
  $
  with $lambda != 0$, i.e. an arbritrary linear equation of the vectors we hope to prove are linearly independent. By factoring out $lambda$ and then multiplying both sides by $1 / lambda$ (guaranteed to exist since $lambda != 0$), we obtain:
  $
    a_1 lambda v_1 + a_2 lambda v_2 + dots + a_m lambda v_m &= 0 &\
    <=> lambda (a_1 v_1 + a_2 v_2 + dots + a_m v_m) &= 0 &\
    <=> a_1 v_1 + a_2 v_2 + dots + a_m v_m &= 0 &\
  $
  But this is our first equation, where we established that all the $a$'s must be zero, implying that the coefficients must all be zero for our new $lambda$ vectors too. Thus, they must be linearly independent, as desired. $qed$
]

11. Prove or give a counterexample: If $v_1,, dots, v_m$ and $w_1, dots, w_m$ are linearly independent lists of vectors in $V$, then the list $v_1 + w_1, dots, v_m + w_m$ is linearly independent.

#pad(left: 17pt)[
  This, intuitively, is false. I thought through an attempted proof in my head, in the style of the last few, and found myself working with $a_1(v_1 + w_1) + dots + a_m (v_m + w_m) = 0$. After distributing out the $a$s and grouping the $v$ and $w$ terms together, we would have $(a_1 v_1 + dots + a_m v_m) + (a_1 w_1 + dots + a_m w_m) = 0$. And while it's true that either of these pieces equal to zero would force the coefficients to zero by linear independence of the two lists, there's no way to guarantee in this combined expression that they don't linearly combine into additive inverses that then cancel to give us the $0$ we're interested in. 

  With this seed of doubt in my mind, a counter-example presented itself immediately:
  $
    vec(1,0), vec(0,1) | vec(-1,0), vec(0, -1)
  $
  
  These two lists are each linearly dependent in $RR^2$, but they sum to a list of two copies of the $0$ vector, which is not a linearly independent list in $RR^2$, as desired. $qed$
]

#pagebreak()


12. Suppose $v_1, dots, v_m$ is linearly independent in $V$ and $w in V$. Prove that if $v_1 + w, dots, v_m + w$ is linearly dependent, then $w in span(v_1, dots, v_m)$.

#pad(left: 17pt)[
  By linear independence of $v_1, dots, v_m$, we know that in the equation $ a_1 v_1 + dots + a_m v_m = 0$, all the $a$'s must be zero.

  By the assumed linear _dependence_ of $v_1 + w, dots, v_m + w$, in contrast, in the equation
  $
    b_1 (v_1 + w) + dots + b_m (v_m + w) = 0,
  $
  there must exist $b_i$'s, not all zero, that make this equation true. Distributing and rearranging, we have:

  $
    (b_1 v_1 + dots + b_m v_m) + (b_1 + dots + b_m)w &= 0 &\
    <=> b_1 v_1 + dots + b_m v_m &= -(b_1 + dots + b_m)w &\
    <=> b_1 / beta v_1 + dots + b_m / beta v_m &= w, &\
  $

  where $beta = -(b_1 + dots + b_m)$. 
  
  (Note that $beta != 0$, and thus multiplicative inverse $1 / beta$ will exist. If, to the contrary, $beta = 0$, then $b_1 v_1 + dots + b_m v_m = -0w = 0$, with linear indepedence implying that all $b_i$s are zero. But this violates the assumption of linear independence of the $v$'s!) 
  
  Since not all of our $b$'s are zero, at least one of the LHS terms will survive and achieve a linear combination of $w$. Thus, $w in span(v_1, dots, v_m)$, as desired. $qed$
]

#pagebreak()

13. Suppose $v_1, dots, v_m$ is linearly independent in $V$ and $w in V$. Show that $v_1, dots, v_m, w$ is linearly independent iff $w in.not span(v_1, dots, v_m)$.

#pad(left: 17pt)[
  One direction is the converse of what we proved in \#12, which unfortunately means that we don't get it for free. Instead, we'll just have to prove both directions...

  $(arrow.r)$ $v_1, dots, v_m, w$ linearly independent $=> w in.not span(v_1, dots, v_m)$
  #pad(left: 10pt)[
    Let $v_1, dots, v_m, w in V$ be linearly independent. Suppose, to the contrary, that $w in span(v_1, dots, v_m)$. Then by definition of span, there exist $a_1, dots, a_m in FF$ such that #box[$a_1 v_1 + dots + a_m v_m = w$]. But this implies that $a_1 v_1 + dots + a_m v_m - w = 0$. Since $v_1, dots, v_m, w$ are linearly independent, the only coefficients that should make their linear combination $0$ are all zeros, which we clearly see is not true - even if all the $a$'s are zero, $w$ has a coefficient of $-1$. This contradiction forces us to conclude that $w in.not span(v_1, dots, v_m)$, as desired.
  ]

  $(arrow.l)$ $w in.not span(v_1, dots, v_m) => v_1, dots, v_m, w$ linearly independent
  #pad(left: 10pt)[
    Let $v_1, dots, v_m in V$ be linearly independent, and take $w in V$ such that $w in.not span(v_1, dots, v_m)$. Consider the equation
    $
      b_1v_1 + dots + b_m v_m + beta w = 0.
    $

    Assume, to the contrary, that there were values of $b_1, dots, b_m, beta$ (not all zero) such that this were true, i.e. that $v_1, dots, v_m, w$ are linearly dependent. 
    
    Though we don't know exactly which coefficients are nonzero, we can safely conclude that $beta != 0$; if $beta = 0$, then we would be left with $b_1 v_1 + dots + b_m v_m = 0$, and the linear independence of the $v$'s would force all the $b$'s to zero, meaning that all of the coefficients were zero after all.

    But if $beta != 0$, then $w$ would be in the span of the $v$'s:

    $
      - b_1 / beta v_1 + dots + - b_m / beta v_m = w,
    $

    contradicting our assumption that $w in.not span(v_1, dots, v_m)$. Thus, all $b_1, dots, b_m, beta$, must be zero, making $v_1, dots, v_m, w$ linearly independent, as desired. 
  ]
$qed$
]

#pagebreak()

14. Suppose $v_1, dots, v_m$ is a list of vectors in $V$. For $k in {1, dots, m}$, let $ w_k = v_1 + dots + v_k. $ Show that the list $v_1, dots, v_m$ is linearly independent if and only if the list $w_1, dots, w_m$ is linearly independent.

#pad(left: 17pt)[
  For reference, it is useful to see each set of vectors in terms of the others:
  #align(center)[
    #grid(
      columns: 2,
      gutter: 8em,
      $
        w_1 &= v_1 &\
        w_2 &= v_1 + v_2 &\
        & dots &\
        w_m &= v_1 + dots + v_m &\
      $,
      $
        v_1 &= w_1 &\
        v_2 &= w_2 - w_1 &\
        & dots &\
        v_m &= w_m - w_(m-1) &\
      $

    )
 ]

  $(arrow.r)$ $v_1, dots, v_m$ linearly independent $=> w_1, dots, w_m$ linearly independent
  #pad(left: 10pt)[
    Let $v_1, dots, v_m in V$ be linearly independent. To establish the linear independence of $w_1, dots, w_m$, consider the equation $ a_1 w_1 + a_2 w_2 + dots + a_m w_m = 0$. By substitution and the left column above, we obtain 
    $
      a_1 v_1 + a_2(v_1 + v_2) + dots + a_m (v_1 + dots + v_m) &= 0 &\
      <=> (a_1 + dots + a_m)v_1 + (a_2 + dots + a_m)v_2 + dots + a_m v_m &= 0 & text("      distribute, regroup")
    $
    Working from right to left, the linear independence of the $v$'s forces all of these coefficients to zero: 
    - $a_m = 0$ directly from the rightmost term
    - $a_(m-1) + a_m = 0 => a_(m-1) = 0$ from the penultimate term
    - $dots$
    - $a_1 + dots + a_m = 0 => a_1 = 0$ if all the later coefficients are zero
    
    The $a$'s being zero satisfies the requirement for linear independence of $w_1, dots, w_m$, as desired.

  ]

  $(arrow.l)$ $w_1, dots, w_m$ linearly independent $=> v_1, dots, v_m$ linearly independent
  #pad(left: 10pt)[
    Let $w_1, dots, w_m in V$ be linearly independent. To establish the linear independence of $v_1, dots, v_m$, consider the equation $b_1 v_1 + b_2 v_2+ dots + b_m v_m = 0$. By substitution and the right column above, we obtain
    $
      b_1 w_1 + b_2 (w_2 - w_1) + dots + b_m (w_m - w_(m-1)) &= 0 &\
      <=> (b_1 - b_2) w_1 + (b_2 - b_3)w_2 + dots + b_m w_m &= 0 & text("        distribute, regroup")
    $
    Again working from right to left, the linear independence of the $w$'s forces all of these coefficients to zero:
    - $b_m = 0$ directly from the rightmost term
    - $b_(m-1) - b_m = 0 => b_(m-1) = 0$ from the penultimate term, once $b_m=0$ has been established
    - $dots$
    - $b_1 - b_2 = 0 => b_1 = 0$ from the first term, once $b_2 = 0$ has been established
    The $b$'s being zero satisfies the requirement for linear independence of $v_1, dots, v_m$, as desired.
  ]
  $qed$
]

#pagebreak()

15. Explain why there does not exist a list of six polynomials that is linearly independent in $PP_4(FF)$.

#pad(left: 17pt)[
  This conclusion essentially follows from the Pidgeonhole Principle. Suppose you start with an empty list and want to start adding polynomials to the list such that they remain linearly independent in $PP_4(FF)$. Using the notation on page 31, you can safely add $1, z, z^2, z^3, z^4$ in this order, since no linear combination of $1, dots, z^m$ will equal $z^(m+1)$. But that only gives us five polynomials in our list, and we wanted six. When we go to "place" this sixth polynomial into one of the five "slots" afforded us by $PP_4(FF)$, we must place into a slot that's already been used. But this  duplicate will obviously be a scalar multiple of the polynomial already occupying that slot, and thus it will be in the span of these first five polynomials, making linear independence impossible.

  This conclusion could alternatively be drawn based on 2.22. Our list $1, z, z^2, z^3, z^4$ spans $PP_4(FF)$, and thus every linearly independent list will have length at most 5, making a linearly independent list of six polynomials impossible in this case. $qed$
]

#v(15pt)

16. Explain why no list of four polynomials spans $PP_4(FF)$.

#pad(left: 17pt)[
  Continuing \#15, we now come at $PP_4(FF)$ from the other direction! 
  
  2.22 is also quite useful in this case. Since we came up with a list of length five that is linearly independent in $PP_4(FF)$ (1, z, z^2, z^3, z^4), we know from 2.22 that any spanning list must have length at least 5. Thus, no list of four polynomials will span $PP_4(FF)$.

  Using the Pidgeonhole Principle approach from \#15, we have the opposite problem now: we have five "slots" to fill and only four polynomials to place into slots. Thus, at least one slot will be empty, meaning there are certain polynomials in $PP_4(FF)$ that our list will be unable to reach via its span. $qed$
]

#pagebreak()

17. Prove that $V$ is infinite-dimensional if and only if there is a sequence $v_1, v_2, dots$ of vectors in $V$ such that $v_1, dots, v_m$ is linearly independent for every positive integer $m$.

#pad(left: 17pt)[
  $(arrow.r)$ $V$ has infinite-dimension $=>$ this infinite vector sequence exists

  #pad(left: 10pt)[
    Let $V$ be an infinite-dimensional vector space. By 2.13, this means that $V$ is not finite-dimensional. By 2.9, there must not be a (finite) list of vectors in $V$ that spans the space.

    The desired sequence seems like it could be constructed quite naturally using mathematical induction, so let's proceed in this direction.

    Base case ($m=1$): There must be some vector $v_1 in V, v_1 != 0$; otherwise, $0$ would be the only element of $V$, and finite list $0$ would span $V$, a contradiction. By 2.16c, the list $v_1$ is linearly independent.

    Inductive step: Assume we have found a list of vectors $v_1, dots, v_m in V$ such that $v_1, dots, v_m$ is linearly independent. This list is finite, and therefore $span(v_1, dots, v_m) != V$. 
    
    This implies that there must exist some $v_(m+1) in V$ that is not in $span(v_1, dots, v_m)$. By \#13, $v_(m+1)$ can be added to sequence $v_1, dots, v_m$ while still maintaining linear independence.

    Since this new vector $v_(m+1)$ can be found for any finite $m > 0$, the desired sequence $v_1, v_2, dots$ therefore exists and can be constructed as above, as desired. $qed$
  ]

  $(arrow.l)$ $exists v_1, v_2, dots in V : v_1, dots, v_m$ is linearly independent, $forall m > 0$ $=>$ V is infinite-dimensional
  #pad(left: 10pt)[
    Let $v_1, v_2, dots in V$ be a sequence of vectors such that $v_1, dots, v_m$ is linearly independent for every integer $m > 0$. Assume, to the contrary, that $V$ is finite-dimensional. 
    
    By 2.9, there must be some (finite) list of vectors $v_1, dots, v_n in V$ such that $V = span(v_1, dots, v_n)$. By 2.22, this establishes a fixed upper bound $n$ on the length of any linearly independent list. But this contradicts the premise that we can construct a list of linearly independent vectors of length $m, forall m > 0$. Thus, $V$ must be infinite-dimensional, as desired. $qed$
  ]
]
 
#v(10pt)

18. Prove that $FF^oo$ is infinite-dimensional.

#pad(left: 17pt)[
  Before we prove anything about $FF^oo$, let's take a second to get clear on what $FF^oo$ is. Back in Chapter 1, we fixed a positive integer $n$ and then defined $FF^n$ to be the set of all lists of length $n$ of elements of $FF$. For example, if we work with $RR$ for a second and consider $RR^2$, then we're essentially with all of the (infinitely many) points in the xy-plane.

  Then on page 13, we defined $FF^oo$ to be the set of all sequences of elements of $FF$:
  $
    FF^oo = {(x_1, x_2, dots): x_k in FF text("for") k = 1, 2, dots}
  $

  We can use our result from \#17 to easily establish the infinite-dimensionality of $FF^oo$. For our sequence of vectors $v_1, v_2, dots in FF^oo$ such that $v_1, dots, v_m$ is linearly independent for all positive integers $m$, use sequence
  $
    vec(1, 0, 0, dots), vec(0, 1, 0, dots), vec(0,0,1,dots), dots
  $

  For any finite $m > 0$, $v_1, dots, v_m$ will clearly be linearly independent: when considering the equation $a_1 v_1 + dots + a_m v_m = 0$, the fact that each non-zero element is in a different position will force the $a$'s to zero is order to satisfy this equation. Thus, $FF^oo$ is infinite-dimensional. $qed$
]

#pagebreak()

19. Prove that the real vector space of all continuous real-valued functions on the interval $[0,1]$ is infinite-dimensional.

#pad(left: 17pt)[
  We can again appeal to our result from \#17 to easily prove this. In this case, we need an infinite sequence of continuous-real-valued functions on $[0,1]$, call it $f_1, f_2, dots$, such that for any finite $m > 0$, the list $f_1, dots, f_m$ is linearly independent.

  Polynomials, with their domain restricted to $[0,1]$, will work perfectly: let $f_k (x) = x^k, x in [0,1]$. This sequence is clearly infinite, as it is indexed by the natural numbers. Polynomials are continuous. And for any $m > 0$, the list $f_1, dots, f_m$ will be linearly independent because in the equation $a_1 x + dots + a_m x^m = 0,$ the unique powers of the polynomial terms will force all the $a$'s to zero in order to make this true.

  Thus, the real vector space of all continuous real-valued functions on the interval $[0,1]$ is infinite-dimensional, as desired. $qed$
]

#v(15pt)

20. Suppose $p_0, p_1, dots, p_m$ are polynomials in $P_m (FF)$ such that $p_k (2) = 0$ for each $k in {0, dots, m}.$ Prove that $p_0, p_1, dots, p_m$ is not linearly independent in $P_m (FF)$.

#pad(left: 17pt)[
  Let $p_0, p_1, dots, p_m$ be polynomials in $P_m (FF)$ such that $p_k (2) = 0$ for each $k in {0, dots, m}$. Assume, to the contrary, that $p_0, dots, p_m$ _is_ linearly independent in $P_m (FF)$. Then in the equation

  $
    a_0 p_0 + dots + a_m p_m = 0,
  $

  it must be the case that the only set of coefficients that makes this true is $a_0 = dots = a_m = 0$, for any value $x in FF$. But this is  false: for $x = 2$, the coefficients are actually irrelevant because all of our polynomials are 0 at $x = 2$. Thus, $p_0, dots, p_m$ is not linearly independent, as desired. $qed$
]