=== Chapter 1C

1. For each of the following subsets of $FF^3$, determine whether it is a subspace of $FF^3$.

a) $U = {(x_1, x_2, x_3) in FF^3: x_1 + 2x_2 + 3x_3=0}$

#pad(left: 11pt)[
Let's check the three conditions required for a subset to be a subspace:

+ $0 in U$, since $0 + 2 dot 0 + 3 dot 0 = 0$ $checkmark$
+ Take $x, y in U$. Write $x = (x_1, x_2, x_3)$ and $y = (y_1, y_2, y_3)$. Then $x + y = (x_1 + y_1, x_2+y_2, x_3 + y_3)$, and it is indeed true that $(x_1 + y_1) + 2(x_2 + y_2) + 3(x_3 + y_3) = 0$, since this can be rewritten as $(x_1 + 2x_2 + 3x_3) + (y_1 + 2y_2 + 3y_3) = 0 + 0 = 0.$ $checkmark$
+ Take $x in U$ and $a in FF$. Then $a x = (a x_1, a x_2, a x_3)$. Then it is indeed true that $(a x_1) + 2(a x_2) + 3 (a x_3) = 0$, since we can factor out the $a$ using associativity and distributivity to obtain $a(x_1 + 2x_2 + 3x_3) = a 0 = 0$ $checkmark$

Since all three conditions are satisfied, this is indeed a subspace of $FF^3$. 

This probably also follows more directly from the fact that this subset describes a plane through the origin in $FF^3$, which reminds me of the facts Axler states on page 19 about the various subspaces of $RR^3$. $qed$
]

b) $U = {(x_1, x_2, x_3) in FF^3: x_1 + 2x_2 + 3x_3 = 4}$

#pad(left: 11pt)[
This subset immediately fails the *additive identity* test: $0 + 2 dot 0 + 3 dot 0 != 4$, so $0 in.not U$. Therefore, it is not a subspace of $FF^3$. $qed$
]

c) $U = {(x_1, x_2, x_3) in FF^3: x_1 x_2 x_3 = 0}$

#pad(left: 11pt)[
+ $0 in U$, since $0 dot 0 dot 0 = 0$ $checkmark$
+ But this subset is not closed under addition. As a counter-example, consider $(0, a, b)$ and $(c, a, 0)$, where $a, b, c != 0$. Each vector has component-product zero, meaning it's in $U$, but the sum is $(c, 2a, b)$. Since no element is zero, it will not be the case that the component-product is zero, meaning that $U$ is not closed under addition.

Therefore, $U$ is not a subspace of $FF^3$. $qed$
]

d) $U = {(x_1, x_2, x_3) in FF^3: x_1 = 5 x_3}$

#pad(left: 11pt)[
+ $0 in U$, since $0 =  5 dot 0$ $checkmark$
+ *closed under addition*. Consider $(5b, a, b)$ and $(5d, c, d)$. Both are in $U$, and their sum is $(5b + 5d, a + c, b + d)$. But this list also has the desired property, since $5b + 5d = 5(b + d)$. Thus, $U$ is closed under addition. $checkmark$
+ *closed under scalar multiplication*. Consider $(5b, a, b) in U$ and $lambda in FF$. Then $lambda (5b, a, b) = (lambda 5 b, lambda a, lambda b)$, and by commutativity, the first component is indeed five times the third component. Thus, $U$ is closed under scalar multiplication. $checkmark$

Since it satisfies all three conditions, $U$ is a subspace of $FF^3$. (And yes, this does seem to be a line through the origin of $FF^3$, which suggests directly that it is a valid subspace of $FF^3$.) $qed$
]

#pagebreak()

2. Verify all assertions about subspaces in Example 1.35.

(a) If $b in FF$, then ${(x_1, x_2, x_3, x_4) in FF^4: x_3 = 5 x_4 + b}$ is a subspace of $FF^4$ if and only if $b = 0$.

#pad(left: 11pt)[
($=>$) Assume $U = {(x_1, x_2, x_3, x_4) in FF^4: x_3 = 5 x_4 + b}$ is a subspace of $FF^4$. Then $0 = (0, 0, 0, 0)$ must be an element of $U$. This implies that $0 = 0 + b => b = 0$, as desired.

($arrow.l.double$) Assume $b = 0$. Then to prove that $U = {(x_1, x_2, x_3, x_4) in FF^4: x_3 = 5 x_4 + 0]}$ is a subspace of $FF^4$, we must verify the three properties. But this is essentially identical to Problem (1d). Thus, $U$ is a subspace of $FF^4$, as desired. $qed$
]

#v(40pt, weak: true)

(b) The set of continuous real-valued function on the interval $[0,1]$ is a subspace of $RR^([0,1])$.

#pad(left: 11pt)[
Let's verify the three properties required for this to be true:
+ *zero*. Define $0 := 0(x) = 0, forall x in RR$ to be the zero function. Then $0$ is continuous - it's a zero-degree polynomial imaginable, and polynomials are continuous (@larson p. 79).
+ *closed under addition*. Let $f, g: [0, 1] arrow RR$ be continuous functions. Then $f + g$ is a continuous function by properties of continuity  (@larson p. 79).
+ *closed under scalar multiplication*. Let $f: [0, 1] arrow RR$ be a continuous function and take $b in RR$. Then $b f$ is a continuous function by properties of continuity  (@larson p. 79).
Thus, this subset is indeed a subspace of $RR^([0,1])$. $qed$
]

#v(40pt, weak: true)

(c) The set of differentiable real-valued functions on $RR$ is a subspace of $RR^(RR)$.

#pad(left: 11pt)[
This proof is very similar to the previous situation, (2b): 
+ The $0$ function is differentiable by the The Constant Rule (@larson p. 110). 
+ The sum of two differentiable functions is differentiable: $ d/(d x){f + g} = d/(d x) f + d/(d x) g $ (@larson p. 114).
+ Scalar multiples are handled appropriately by the Constant Multiple Rule: $ d/(d x){c f} = c d/(d x) f $ (@larson p. 113).

Thus, the set of differentiable real-valued functions on $RR$ is a subspace of $RR ^(RR)$. $qed$
]

#pagebreak()

(d) The set of differentiable real-valued functions $f$ on the interval $(0, 3)$ such that $f'(2)=b$ is a subspace of $RR^((0,3))$ if and only if $b = 0$.

#pad(left: 11pt)[
($=>$) Assume that set of functions (call it $U$) is a subspace of $RR^((0,3))$. Then it must contain the zero function and be closed under addition and scalar multiplication. Take $f, g in U$. Then $f + g in U$. Thus, $(f + g)'(2) = b$. But by the derivative property in (c.2) above, $(f + g)'(2) = f'(2) + g'(2) = b + b = 2b$. Thus, we must have $b = 2b$, which implies $b = 0$ as desired.

($arrow.l.double$) Assume that $b = 0$, i.e. that $U$ is the set of differentiable real-valued functions $f$ on the interval $(0, 3)$ such that $f'(2)=0$. To verify that this is a subspace of $RR^((0,3))$, we can check the three required properties:
+ $0 in U$, since $0'(x) = 0, forall x$, so $0'(2) = 0$.
+ For $f, g in U$, $f + g in U$ since $(f + g)'(2) = f'(2) + g'(2) = 0 + 0 = 0$.
+ For $f in U$ and $c in RR$, $c f in U$ since $(c f)'(2) = c dot f'(2) = c dot 0 = 0$.
Thus, $U$ is a subspace of $RR^((0,3))$.

Since both directions of the implication are true, this iff holds. $qed$
]

#v(30pt, weak: true)

(e) The set of all sequences of complex numbers with limit $0$ is a subspace of $C^infinity$.

#pad(left: 11pt)[
Let's check the three properties for this subset (call it $U$):
+ *zero*. Define $0$ as the sequence of all zeros. Then this has limit zero, so $0 in U$.
+ *closed under addition*. If $g$ and $h$ are two sequences of complex numbers with limit zero, then $g + h$ will also be a sequence of complex numbers due to the fact that $ lim_(i arrow infinity) g_i + h_i = lim_(i arrow infinity) g_i + lim_(i arrow infinity) h_i = 0 + 0 = 0 $
+ *closed under scalar multiplication*. For $g$ a sequence of complex numbers with limit zero and $lambda in FF$, then $ lim_(i arrow infinity) lambda g_i = lambda lim_(i arrow infinity) g_i = lambda dot 0 = 0 $
Thus, $U$ is a subspace of $C^infinity$. $qed$
]

#pagebreak()

3. Show that $U$, the set of differentiable real-valued functions $f$ on the interval $(-4, 4)$ such that $f'(-1) = 3 f(2)$, is a subspace of $RR^((-4,4))$.

#pad(left: 11pt)[
As usual, we'll demonstrate that the three required properties hold:
+ *zero*. As before, define $bold(0)$ as the function such that $bold(0)(x) = 0, forall x in (-4, 4)$. Then $bold(0) in U$ since $bold(0)'(x) = 0$ and therefore $bold(0)'(-1) = 3 dot bold(0)(2)$, since $0 = 3 dot 0$. $checkmark$

+ *closed under addition*. Take $f, g in U$. Then $f + g in U$, since $ 
(f + g)'(-1) 
  &= f'(-1) + g'(-1) & "Derivative of Sum rule"\
  &= 3f(2) + 3g(2) & f, g in U\
  &= 3(f(2) + g(2)) & "factor out the 3"\
  &= 3((f + g)(2)) & "definition of" f + g\
$

+ *closed under scalar multiplication*. Take $f in U$ and $lambda in F$. Then $lambda f in U$, since $
(lambda f)'(-1)
  &= lambda f'(-1) & "Constant Multiple Rule for derivatives"\ 
  &= lambda 3 f(2) & f in U \
  &= 3 (lambda f)(2) & "commut. and assoc. of scalars"
$

Thus, $U$ is a subspace of $RR^((-4,4))$. $qed$
]

#v(30pt)

4. Suppose $b in RR$. Show that the set of continuous real-valued functions $f$ on the interval $[0,1]$ such that $integral_0^1 f = b$ (call this set $U$) is a subspace of $RR^([0,1])$ if and only if $b = 0$.

#pad(left: 11pt)[
($=>$) Assume that $U$ is a subspace. Then function $bold(0): bold(0)(x) = 0, forall x in [0,1]$ is in $U$. This implies that $integral_0^1 bold(0) = b$. But $integral_0^1 bold(0) = 0$ using basic integral properties. Thus, $b = 0$.

($arrow.l.double$) Assume that $b = 0$, i.e. that $U$ is the set of continuous real-valued functions $f$ on the interval $[0,1]$ such that $integral_0^1 f = 0$. Then this satisfies all three properties required to be a subspace:

+ $bold(0) in U$ if $bold(0)$ is defined as above, since $integral_0^1 bold(0) = 0$. $checkmark$
+ For $f, g in U$, $integral_0^1 f +g = integral_0^1 f + integral_0^1 g = 0 + 0 = 0$, using the fact that the integral of a sum is the sum of the integrals. $checkmark$
+ For $f in U$ and $lambda in FF$, $integral_0^1 lambda f = lambda integral_0^1 f = lambda dot 0 = 0$, using the fact that you can "pull" a constant multiple through an integral. $checkmark$

Since both directions of the implication are true, this iff holds. $qed$
]

#pagebreak()

5. Is $RR^2$ a subspace of the complex vector space $CC^2$?

#pad(left: 11pt)[
Well, $RR^2$ is definitely a subset of $CC^2$: any $(a, b) in RR^2$ can also be written $(a + 0i, b + 0i) in CC^2$. 

And $RR^2$ is definitely a vector space: addition will be commutative and associative, we have an additive identity $0 = (0, 0)$, every element has an additive inverse, we have a multiplicative identity $1$, and distribution works perfectly.

But I don't think that $RR^2$ is actually a subspace of complex vector space $CC^2$! 

Definition (1.33) tells us that "a subset $U$ of $V$ is called a subspace of $V$ if $U$ is also a vector space space with the same additive identity, addition, and scalar multiplication *as on $V$*" (emphasis mine). The additive identity of $CC^2$, $(0 + 0i, 0 + 0i)$ will also work as the additive identity of $RR^2$, since $0 + 0i = 0$. But $RR^2$ definitely isn't closed under scalar multiplication if the scalars are coming from $CC^2$: $i (1, 2) = (i, 2i) in.not RR^2$. Thus, $RR^2$ is not a subspace of $CC^2$.
]

#v(20pt)

6. 
(a) Is $U = {(a,b,c) in RR^3 : a^3 = b^3}$ a subspace of $RR^3$?

#pad(left: 15pt)[
Yes. Note that for $a,b in RR$, $a^3 = b^3 <=> a = b$. Thus,
+ $bold(0) = (0,0,0)$ respects the requirement $a = b$.
+ For $x = (x_1, x_2, x_3), y = (y_1, y_2, y_3) in U$ , $x + y = (x_1 + y_1, x_2 + y_2, x_3 + y_3)$ will respect the requirement $a = b$, since $(x_1 + y_1) = (x_2 + y_2)$ follows directly from the fact that $x_1 = y_1$ and $x_2 = y_2$.
+ For $x = (x_1, x_2, x_3) in U$ and $lambda in RR$, $lambda x = (lambda x_1, lambda x_2, lambda x_3)$ will respect $a = b$, since $x_1 = x_2$.
With these three properties established, $U$ is indeed a subspace of $RR^3$.

]

(b) Is ${(a,b,c) in RR^3 : a^3 = b^3}$ a subspace of $CC^3$?

#pad(left: 15pt)[
No. As described above in Q5, it won't be closed under scalar multiplication.
]

#v(20pt)

7. Prove or give a counterexample: If $U$ is a nonempty subset of $RR^2$ such that $U$ is closed under addition and under taking additive inverses (meaning $-u in U$ whenever $u in U$), then $U$ is a subspace of $RR^2$.

#pad(left:13pt)[
This is _not_ a subspace of $RR^2$. 

As a counterexample, consider $U = {(z, 0, 0), z in ZZ}$. This is certainly nonempty: $U$ contains countably infinite elements. It's closed under addition, since the integers are closed under addition. And it's closed under additive inverses, since $-z in ZZ, forall z in ZZ$ by def. of the integers.

But $U$ is not a subspace of $RR^2$. $0 in U$ and $U$ is closed under addition, but it's not closed under scalar multiplication: $(1,0,0) in U$ and $pi in RR$, but $pi(1,0,0) = (pi,0,0) in.not U$, since $pi$ is clearly not an integer. Thus, $U$ fails to satisfy the three conditions required to be a subspace. $qed$
]

#pagebreak()

8. Give an example of a nonempty subset $U subset RR^2$ such that $U$ is closed under scalar multiplication, but $U$ is not a subspace of $RR^2$.

#pad(left:13pt)[

Well, if $U$ is closed under scalar multiplication but not a subspace of $RR^2$, then it must 
- lack a zero element, or 
- not be closed under addition

It cannot lack a zero because $0 in RR$, $U$ is nonempty, and $U$ is closed under scalar multiplication. So for $u in U$, $0 dot u in U$, but $0 dot u = bold(0)$. So $U$ contains a zero element.

Thus, it must not be closed under addition. 

Let $U = {(a, b) : a, b in RR "with" a b = 0}$. Then:
- $(0, 0) in U$, since $0 dot 0 = 0$
- $lambda (a, b) in U$ for $lambda in RR$ and $(a, b) in U$, since $lambda (a, b) = (lambda a, lambda b)$ and $lambda a dot lambda b = lambda^2 dot a b = 0$

But $U$ isn't closed under addition! For example, $(1,0) in RR^2$ and $(0,1) in RR^2$, but $(1,0) + (0, 1) = (1,1) in.not U$. 

Note that this counter-example corresponds geometrically to the coordinate axes. They contain the origin, and they go on forever (scalar multiplication), but by adding an x-coordinate vector with a y-coordinate vector, you escape the axes (and therefore $U$). $qed$
]

#v(10pt)

9. A function $f: RR arrow RR$ is called _periodic_ if there exists a positive number $p$ such that $f(x) = f(x+p)$ for all $x in RR$. Is the set of periodic functions from $RR$ to $RR$ a subspace of $RR^(RR)$? Explain.

#pad(left:13pt)[
Clearly the zero function $0(x) = 0$ satisfies the definition of _periodic_, so our subset contains a zero element. It will also be closed under scalar multiplication: geometrically, if a function is periodic, then a vertically stretched/compressed version of the function will also be periodic. 

But I don't think this will be closed under addition because, after giving it a bit of thought, my intuition suggested that it's possible to define two functions that are themselves periodic but whose periods will never align. I was imagining something like $f(x) = sin(pi x)$ and $g(x) = cos(x)$. These have period $(2 pi) / pi = 2$ and $2 pi$, respectively, using basic trig properties. But there will never be an x-value that is divisible by both $2$ and $2 pi$. Therefore, $f(x) + g(x)$ is aperiodic, meaning we have left the world of periodic functions via addition. *Not a subspace.* $qed$

]

#v(10pt)

10. Suppose $V_1$ and $V_2$ are subspaces of $V$. Prove that the intersection $V_1 sect V_2$ is a subspace of $V$.

#pad(left:18pt)[
I don't see any theorems regarding the intersections of subspaces, so I suppose we should just verify that the three required conditions hold.

+ *zero*. Since $V_1$ and $V_2$ are subspaces of $V$, the zero element of $V$ is in both $V_1$ and $V_2$. Therefore, it is also in the intersection, i.e. $0 in V_1 sect V_2$. $checkmark$
+ *closed under addition*. Take $x, y in V_1 sect V_2$. Then by definition of intesection, $x,y in V_1$ and $x,y in V_2$. Since both $V_1$ and $V_2$ are subspaces, they must be closed under addition, so $x + y in V_1$ and $x + y in V_2$. Thus, $x + y in V_1 sect V_2$. $checkmark$
+ *closed under scalar multiplication*. Take $x in V_1 sect V_2$ and $lambda in FF$. Then by definition of intersection, $x in V_1$ and $x in V_2$. Since $V_1$ and $V_2$ are subspaces, they are closed under scalar multiplication. Thus, $lambda x in V_1$ and $lambda x in V_2$, implying that $lambda x in V_1 sect V_2$. $checkmark$
Since all three conditions hold, $V_1 sect V_2$ is a subspace of $V$. $qed$
]

#pagebreak()

11. Prove that the intersection of every collection of subspaces of $V$ is a subspace of $V$.

#pad(left:18pt)[
Initially, I tried to be cute and did this:

#pad(left:18pt)[
After Q10, this is a simple proof by induction. 

*Base case*: the intersection of a collection of one subspace $U$ of $V$ is just $U$, and $U$ is a subspace, so the intersection is trivially a subspace of $V$.

*Inductive step*: suppose this is true for every collection containing up to $n$ subspaces $U_1, ..., U_n$ of $V$, i.e. that $sect.big_(i=1)^n U_i$ is a subspace of $V$ for all choices of subspaces ${U_i}$. Now consider another subspace $U_(n+1)$ of $V$. Let $V_1 := sect.big_(i=1)^n U_i$ and let $V_2 := U_(n+1)$. Then by Q10, $V_1 sect V_2$ is a subspace of $V$, as desired. $qed$
]

But this only establishes the desired fact for a collection of subspaces with finite size. To prove that this is true for _every_ collection of subspaces of $V$, we would need to go back to first principles and establish the three required conditions, as we did in Q10. 

In particular, let ${U_i}$ be an arbitrary collection of subspaces of $V$. Then:
+ *zero*. Since $0 in U_i, forall i$ by definition of a subspace, $0 in sect_i U_i$. $checkmark$
+ *closed under addition*. Take $x, y in sect_i U_i$. By definition of intersection, $x$ and $y$ are in all $U_i$. And since all $U_i$ are subspaces of $V$, $x + y in U_i, forall i$. Thus, $x + y in sect_i U_i$. $checkmark$
+ *closed under scalar multiplication.* Take $x in sect_i U_i$ and $lambda in FF$. By definition of intersection, $x in U_i, forall i$. And since all $U_i$ are subspaces of $V$, $lambda x in U_i, forall i$. Thus, $lambda x in sect_(i) U_i$. $checkmark$

Thus, the intesection of every collection of subspaces of $V$ is a subspace of $V$. $qed$
]

#pagebreak()

12. Prove that the union of two subspaces of $V$ is a subspace of $V$ if and only if one of the subspaces is contained in the other.

#pad(left:18pt)[
Well, let $X$ and $Y$ be subspaces of $V$.

Here was my first version of the forward direction:

#pad(left:10pt)[
($=>$, via a proof-by-contradiction of the contrapositive) 

Assume that it is not that case that one of the subspaces is contained in the other, i.e. that neither subspace contains the other. We want to show that $X union Y$ is not a subspace of $V$. 

Well, since neither subspace contains the other, there must be an $x in X \\ Y$ and a $y in Y \\ X$. Assume, to the contrary, that $X union Y$ _is_ a subspace of $V$. Then by definition of a subspace, it must be closed under addition. And since $x in X$ and $y in Y$, it must be that $x, y in X union Y$ by definition of the union. Thus, $x + y in X union Y$. But $x + y$ cannot be in $X union Y$, because that would require $x + y$ to be in either $X$ (impossible, since $X$ is closed under addition and $y in.not X$) or $Y$ (impossible, since $Y$ is closed under addition and $x in.not Y$). This is a contradiction, implying that $X union Y$ is not a subspace of $V$. 

And thus, by the contrapositive, we can conclude that if the union of two subspaces of $V$ is a subspace of $V$, then one of the subspaces is contained in the other. $checkmark$
]

But a proof-by-contraction of the contrapositive felt a bit roundabout, so I decided to try a direct proof instead. Here's what I came up with:

#pad(left:10pt)[
($=>$) Assume $X union Y$ is a subspace of $V$. We want to show that $X subset.eq Y$ or $Y subset.eq X$.

Well, take $x in X$. Then $x in X union Y$ by definition of union. And therefore $x + y in X union Y$ for all $y in Y$, since subspace $X union Y$ is closed under addition. But if $x + y in X union Y$ for all $y in Y$, then every possible $x + y$ must be in either $X$ or $Y$ (or both). There are two interesting possibilities to consider:

+ $x + y in X$ for all $y in Y$. In this case, $Y subset.eq X$, since $X$ is closed under addition.
+ If $x + y in Y$ for some $y in Y$, then it must be that $x in Y$, since subspace $Y$ is closed under addition. But $x$ was arbitrary, implying that $X subset.eq Y$.

Thus, one of the subspaces must contain the other. $checkmark$
]

In either case, the backward direction is much simpler:

($arrow.l.double$) Assume, without loss of generality (due to symmetry in $X$ and $Y$), that $X subset.eq Y$. Then using basic properties of union, #box[$X union Y = Y$] which is a subspace of $V$! Thus, if one of the subspaces is contained in the other, then their union is a subspace of $V$. $checkmark$

Since both directions hold, the iff is true. $qed$
]

#pagebreak()

13. Prove that the union of three subspaces of $V$ is a subspace of $V$ if and only if one of the subspaces contains the other two.

#pad(left:18pt)[
Well, let $A, B, C$ be subspaces of $V$.

($=>$) Assume that $A union B union C$ is a subspace of $V$.  TODO: finish!

($arrow.l.double$) Assume, without loss of generality (due to symmetry of our subspaces), that $A$ contains $B$ and $C$. Then using basic properties of union, #box[$A union B union C = A$], which is a subspace of $V$. Thus, if one of the subspaces contains the other two, then their union is a subspace of $V$. $checkmark$

Since both directions hold, the iff is true. $qed$
]

#v(20pt)

14. Suppose $ U = {(x, -x, 2x) in FF^3: x in FF} "and" W = {(x, x, 2x) in FF^3 : x in FF}. $ Describe $U + W$ using symbols, and also give a description of $U + W$ that uses no symbols.

#pad(left:18pt)[
This is our first situation involving sums of subspaces! Just to refresh our memory in the context of this problem, $U + W = {u + w : u in U, w in W}$, i.e. the set of all possible sums of elements from $U$ and $W$. Thus, based on the definitions of $U$ and $W$, $ U + W &= {(a, -a, 2a) + (b, b, 2b) in FF^3 : a, b in FF} \ &= {(b +a, b-a, 2a+2b) in FF^3: a, b in FF} $

In words, $U + W$ is the set of elements of $FF^3$ such that:
- the first component is the sum of two elements of $FF$
- the second component is the difference of those same two elements of $FF$
- the third component is twice the first component
$qed$
]

#v(20pt)

15. Suppose $U$ is a subspace of $V$. What is $U + U$?

#pad(left:18pt)[
Well, by definition $U + U$ is the set of all possible sums of elements of $U$. In symbols, #box[$U + U = {u_1 + u_2 : u_1 in U, u_2 in U}$]. But since $U$ is a subspace of $V$ by assumption, it will be closed under addition, i.e. $forall u_1, u_2 in U, u_1 + u_2 in U$. And any element of $U$ can be written as a sum of two elements of $U$: $forall u in U, u = u + 0$ by definition of the additive identity. (Other sums may be possible too, of course.)

Thus, $U + U = U$! $qed$
]

#pagebreak()

16. Is the operation of addition on the subspaces of $V$ commutative? In other words, if $U$ and $W$ are subspaces of $V$, is $U + W = W + U$?

#pad(left:18pt)[
Yes, the operation of addition on the subspaces of $V$ is commutative intuitively because of the commutatitivity of the subspaces involved. But in order to show that $U + W = W + U$ formally, we should show that an arbitrary element of one set is a member of the other.

($subset.eq$) Take $x in U + W$. Then there exist $u in U, w in W$ such that $x = u + w$ by definition of $U + W$. But by commutativity of vector addition, $u + w = w + u$. Thus, $x = w + u$, which implies that $x in W + U$ by definition of $W + U$. $checkmark$

($supset.eq$) Take $x in W + U$. Then there exist $w in W, u in U$ such that $x = w + u$ by definition of $W + U$. But by commutativity of vector addition, $w + u = u + w$. Thus, $x = u + w$, which implies that $x in U + W$ by definition of $U + W$. $checkmark$

Note that, since $U$ and $W$ are both subspaces of $V$, they use the same additive identity, addition, and scalar multiplication as V (1.33). And by (1.40), $U+W$ and $W +U$ are themselves subspaces of $V$. Thus, the commutativity of $+$ on $V$ will also apply to $U + W$ and $W + U$.

Thus, the operation of addition on the subspaces of $V$ is commutative. $qed$
]

17. Is the operation of addition on the subspaces of $V$ associative? In other words, if $A, B, C$ are subspaces of $V$, is $ (A + B) + C = A + (B + C) "?" $

#pad(left:18pt)[
Like Q17, the answer intuitively seems to be "yes" due to the associativity of addition. But to formally prove this, we can show that these two sets contain each other:

($subset.eq$) Take $x in (A + B) + C$. Then there exist $a in A, b in B, c in C$ such that $x = (a + b) + c$ by definition of $(A + B) + C$. But note that ${A, B, C, A+B, B+C, (A+B)+C, A + (B + C)}$ are all subspaces of $V$ that use the same addition as $V$. Thus, by associativity of this addition operation, $(a + b) + c = a + (b + c)$. Thus, $x = a + (b + c)$, which implies that $x in A + (B + C)$ by definition of $A + (B+C)$. $checkmark$

($supset.eq$) In the same vein, for $x in A+(B+C)$, there must exist $a in A, b in B, c in C$ such that $x = a+(b+c)$. But by associativity of addition, $a+(b+c) = (a+b)+c$. Thus, $x = (a+b)+c$, which implies that $x in (A+B)+C$. $checkmark$

Since these two sets are subsets of each other, they must be equal, implying that the operation of addition of the subspaces of $V$ is associative. $qed$
]

#pagebreak()

18. Does the operation of addition on the subspaces of $V$ have an additive identity? Which subspaces have additive inverses?

#pad(left:18pt)[
Yes, it does have an additive identity. Let $Z = {0}$, i.e. the subset of $V$ that contains only $V$'s zero element. Then $Z$ is a subspace of $V$: it obviously contains the zero element, it's closed under addition ($0 + 0 = 0$), and it's closed under scalar multiplication ($forall lambda in FF, lambda 0 = 0$). To show that this is the additive identity for the operation of addition on the subspaces of $V$, let $A$ be an arbitrary subspace of $V$. Then $A + Z = {a + 0: a in A}$, since $0$ is the only element of $Z$. But since $a + 0 = a$ by definition of the additive identity (which is the same for $V$ and subspaces $A$ and $Z$), $A + Z = A$. Thus, $Z$ is the additive identity for this operation.

It's hard to imagine a non-trivial subspace $B$ of $V$ that would have an additive inverse, i.e. some other subspace $B'$ such that $B + B' = Z$. Why? Because $B + B'$ is the set of _all_ elements you can obtain by adding something from $B$ and something from $B'$. So if $B$ contains some element $x != 0$, then $x in B + B'$ since $0 in B'$ (by definition of a subspace) and $x = x + 0$. But #box[$x in B + B'$] implies that $x in Z$, which is impossible, since $Z$ only contains $0$. Thus, I think that only $Z$ has an additive inverse, namely itself. $qed$
]

#v(20pt)
19. Prove or give a counterexample: If $V_1, V_2,U$ are subspaces of $V$ such that $ V_1 + U = V_2+U, $ then $V_1 = V_2$.

#pad(left:18pt)[
This is clearly false - it's possible for $U$ to do the heavy lifting with minimal, different contributions from $V_1 != V_2$. For example, define $ V_1 = {(a,0,0) in RR^3 : a in RR}, V_2 = {(0,b, 0) in RR^3 : b in RR}, U = {(a, b, 0) in RR^3 : a, b in RR}. $

Then $V_1 + U = V_2 + U = U$, since all three of these subspaces contain all elements of $RR^3$ with a third component of zero. But $V_1 != V_2$. $qed$
]

#pagebreak()

20. Suppose $U = {(x,x,y,y) in FF^4 : x, y in FF}.$ Find a subspace $W$ of $FF^4$ such that $FF^4 = U xor W$.

#pad(left:18pt)[
Our first direct sum problem - exciting! Let's review the facts we have about direct sums:
+ (1.41) $V_1 + dots + V_m$ is a direct sum if each element of $V_1 + dots + V_m$ (which is a subspace of $V$) can be written in only one way as the sum $v_1 + dots + v_m$, where each $v_k in V_k$.
+ (1.45) Given subspaces $V_1, dots, V_m$ of $V$, $V_1 + dots + V_h$ is a direct sum iff the only way to write $0$ as a sum $v_1 + dots + v_m$, where each $v_k in V_k$, is by taking each $v_k$ equal to $0$.
+ (1.46) Suppose $U$ and $W$ are subspaces of $V$. Then $U + W$ is a direct sum $<=>$ $U sect W = {0}.$

These last two facts could be useful for Q20. For example,
- we're stuck with vectors of the form $(x,x,y,y)$ and we need to make sure that $0 = (0,0,0,0)$ can only be written as $0 = 0 + 0$
- we could try to specify a subspace such that the only overlap with these $(x,x,y,y)$s is $0$.

One way to satisfy this second point is #box()[$W = {(a, b, c, d): a != b, c != d, a,b,c,d in FF}$]. Unfortunately, though, this doesn't seem to be closed under addition: $(1,2,3,4) + (2,1,4,3) = (3,3,7,7)$. (And hey, this subset doesn't even contain 0!) So that won't work. $crossmark.heavy$

After a bit more thought, I landed on $W = {(a, b, a, b): a,b,c,d in FF}$. This is a better attempt ($0 in W$, for example), but unfortunately, it's a bit too general with respect to $U$. We can write $0 = (1,1,1,1) + (-1,-1,-1,-1)$, where these two elements are both fair game in either subset.

So how can we exclude this possibility for $W$? Ah, consider $W = {(a, -a, b, -b)}$ and take $u in U, w in W$. Then when we consider the system

$
  u + w = vec(x + a, x - a, y + b, y - b) = vec(0,0,0,0),
$

we find that $x = a$ and $x = -a$, which can be true iff $x = a = 0$. Likewise, $y = b = -b = 0$. And since the only way to write $0$ is a sum $0 + 0$, it must be that $U xor W$, i.e. that they form a direct sum. But is this direct sum equal to $FF^4$?

For this to be true, an arbitrary $v in FF^4$ must be reachable in exactly one way as a sum $u + w$. In other words, an arbitrary $v = (v_1, v_2, v_3, v_4)$ must be reachable and must uniquely determine our vectors $(x,x,y,y)$ and $(a,b,a,b)$. Thankfully, this is true too! Examining the system:

$
  vec(x + a, x - a, y + b, y - b) = vec(v_1, v_2, v_3, v_4),
$

we see that we can let:
- $x$ be the midpoint of $v_1$ and $v_2$, i.e. $x = (v_1 + v_2)/2$
- $a$ be the distance from $x$ to both $v_1$ and $v_2$, i.e. $a = (v_1 - v_2)/2$
- $y$ be the midpoint of $v_3$ and $v_4$, i.e. $y = (v_3 + v_4)/2$
- $b$ be the distance from $y$ to both $v_3$ and $v_4$, i.e. $b = (v_3 - v_4)/2$

Thus, since $U$ and $W$ have trivial intersection and can reach any vector in $FF^4$, $U xor W = FF^4$. $qed$


]

#pagebreak()

21. Suppose $U = {(x,y,x+y,x-y,2x) in FF^5 : x, y in FF}.$ Find $W subset FF^5: FF^5 = U xor W$.


#pad(left:18pt)[
/*
We saw in the previous problem that having $x + a = 0$ and $x - a = 0$ simultaneously forces all variables involved to be zero. Looking at the $x + y$ and $x-y$ elements we similarly have here, let $W = {(a, b, 0, 0, c) : a, b, c in FF^5}$.

NOTE: Pursuing this line of reasoning to its incorrect conclusions helped me to clarify my understanding that it's not just about forming a direct sum - it's about forming a direct sum that's equal to $FF^5$. For example, the x-axis and the subset ${(0,0) in RR^2}$ are a direct sum (since they intersect only at the origin), but it would be crazy to claim that their direct sum is $RR^2$. So being a direct sum isn't enough for problems like these - you need to perfectly complement the given subset so that (a) the only overlap is $0$, but (b) the combinations you can form span the entire subspace you're trying to capture.
*/

Notice that $U$ effectively has two degrees of freedom: once you pick the first two components, the remaining three components are determined. Since we're trying to span $FF^5$, it intuitively seems like we'll need three degrees of freedom in W to capture the five dimensions of our target.

Furthermore, W needs to accomplish two things simultaneously:
1. Different enough from $U$ that their only intersection is $0$.
2. Rich enough that together, you can reach any vector in $FF^5$.

After giving this an embarrassing amount of thought, let $W = {(0,0,c,d,e) in FF^5 : c,d,e in FF}$. This is definitely a subspace. In considering 
$
vec(x,y,x+y,x-y,2x) + vec(0,0,c,d,e) = vec(0,0,0,0,0),
$
note that the first two equations force $x = y = 0$, which makes the remaining components of the leftmost vector zero, which forces $c=d=e=0$, ensuring that these two subsets form a direct sum.

And in considering
$
vec(x,y,x+y,x-y,2x) + vec(0,0,c,d,e) = vec(v_1, v_2, v_3, v_4, v_5),
$
note that we can let $x = v_1$ and $y = v_2$. This will determine the remaining three components of the leftmost vector, and then we can use $c, d,e$ to make up the difference between these determined values and our target values $v_3, v_4, v_5$: 
- $c = v_3 - (x + y) = v_3 - (v_1 + v_2)$
- $d = v_4 - (x - y) = v_4 - (v_1 - v_2)$
- $e = v_5 - 2x = v_5 - 2v_1$

Thus, we can reach an arbitrary element of $FF^5$. Thus, $U xor W = FF^5$. $qed$
]

#pagebreak()

*20, Take 2*. Let $U = {(x,x,y,y) in FF^4 : x, y in FF}.$ Find a subspace $W$ of $FF^4$ such that $FF^4 = U xor W$.

#pad(left:18pt)[
I wanted to try the approach I used in Q21 to re-solve Q20. Using that same reasoning, we see that $U$ has two degrees of freedom - we choose the first and third components, and then components two and four are determined. So what if we let $W = {(0,a,0,b) in FF^4: a,b in FF}$?

This is definitely a subspace: $0 in W$, and it's closed under addition and scalar multiplication.

In considering
$
  vec(x,x,y,y) + vec(0,a,0,b) = vec(0,0,0,0),
$

the first and third equations force $x=y=0$, which then force $a = b = 0$, as needed to be a direct sum.

And in considering
$
  vec(x,x,y,y) + vec(0,a,0,b) = vec(v_1, v_2, v_3, v_4),
$

we can let $x = v_1$ and $y = v_3$. Then $a = v_2 - v_1$ and $b = v_4 - v_3$. Thus, we can define our components in terms of an arbitrary element of $FF^4$, so all elements of $FF^4$ must be reachable. Thus, $U xor W = FF^4$, as desired. $qed$


]

#v(20pt)

22. Suppose $U = {(x,y,x+y,x-y,2x) in FF^5 : x, y in FF}.$ Find three subspaces $W_1, W_2, W_3$ of $FF^5$, none of which equals ${0}$, such that $FF^5 = U xor W_1 xor W_2 xor W_3$.


#pad(left:18pt)[
Inspired by the technique we developed in *Q21* and *Q20 Take 2*, let:

- $W_1 = {(0,0,a,0,0) in FF^5 : a in FF}$
- $W_2 = {(0,0,0,b,0) in FF^5 : b in FF}$
- $W_3 = {(0,0,0,0,c) in FF^5 : c in FF}$

Then 
$
  vec(x,y,x+y,x-y,2x) + vec(0,0,a,0,0) + vec(0,0,0,b,0) + vec(0,0,0,0,c) = vec(0,0,0,0,0)
$

implies that $x = y = 0$, making the rest of the left vector zero, making $a = b = c = 0$.

And if
$
  vec(x,y,x+y,x-y,2x) + vec(0,0,a,0,0) + vec(0,0,0,b,0) + vec(0,0,0,0,c) = vec(v_1, v_2, v_3, v_4, v_5),
$
then $x = v_1$, $y = v_2$, a = $v_3 - (v_1 + v_2), b=v_4-(v_1 - v_2), c = v_5 - 2v_1$ are the unique solutions to the problem of reaching an arbitrary $v = (v_1, v_2, v_3, v_4, v_5)in FF^5$. 

Thus, $FF^5 = U xor W_1 xor W_2 xor W_3$, as desired. $qed$
]

#v(20pt)

23. Prove or give a counterexample: If $V_1, V_2, U$ are subspaces of $V$ such that $ V = V_1 xor U "   and   " V = V_2 xor U, $ then $V_1 = V_2$.

#pad(left:18pt)[
  My two solutions to Q20 actually provide a counter-example: 
  - $V = FF^4$
  - $U = {(x,x,y,y) in FF^4 : x, y in FF}$
  - $V_1 = {(a, -a, b, -b) in FF^4 : a, b in FF}$
  - $V_2 = {(0, a, 0, b) in FF^4 : a, b in FF}$

Then I showed that $V = V_1 xor U$ and $V = V_2 xor U$, but clearly $V_1 != V_2$. For example, $(1,-1,1,-1)$ is in $V_1$ but not $V_2$. Thus, this claim is false. $qed$
]

#v(20pt)

24. A function $f: RR -> RR$ is called _even_ if $f(-x) = f(x), forall x in RR$. A function $f: RR -> RR$ is called _odd_ if $f(-x) = -f(x), forall x in RR$. Let $V_e$ denote the set of real-valued even functions on $RR$ and let $V_o$ denote the set of real-valued odd functions on $RR$. Show that $RR^(RR) = V_e xor V_o$.

#pad(left:18pt)[
What an outrageous claim! I love it. And apparently it's even true, since we're asked to prove it.

Just to elaborate upon what we're being asked to prove, we must show that:
1. $V_e$ and $V_o$ form a direct sum $<=>$ $V_e sect V_o = {0}$ by (1.46).
2. Any function $f: R -> R$ can be decomposed into the sum of exactly two sub-functions: an even function and an odd function.

Proving \#1 is fairly straightforward. Take $f in V_e sect V_o$. Then by definition of $sect$, $f in V_e$ and $f in V_o$. Thus, it true that $f(-x) = f(x)$ and $f(-x) = -f(x)$ for all $x in RR$. This implies that $f(x) = -f(x)$ for all $x in RR$, which is true iff $f(x) = 0, forall x in RR$. Thus, $V_e sect V_o = {0}$.

To prove \#2, take $f in RR^(RR)$ and do a bit of wishful thinking. Imagine for a moment that we can actually decompose $f$ into $e + o$, the sum of an even and an odd function. Then we would have:

$
  f(x)=e(x)+o(x) \
  f(-x) = e(x)-o(x)
$

Solving this system via:
- addition elimination, we  find that $e(x) = (f(x)+f(-x))/2$
- subtraction elimination, we find that $o(x)=(f(x)-f(-x))/2$

But wait! We can't just assume that these nice even and odd functions exist. So let's verify that these functions actually have their stated properties...

Is $e(x)$ even? Well, $e(-x) = (f(-x)+f(--x))/2 = (f(x)+f(-x))/2=e(x)$, as required.

Is $o(x)$ odd? Well, $o(-x)=(f(-x)-f(--x))/2=(f(-x)-f(x))/2=-(f(x)-f(-x))/2 = -o(x)$, as required.

Does the sum work? Well, $e(x) + o(x) = (f(x)+f(-x))/2 + (f(x)-f(-x))/2 = (2f(x))/2 = f(x)$, as required.

Thus, these  functions $e(x)$ and $o(x)$ are even and odd respectively, can be defined uniquely in terms of arbitrary $f in RR^(RR)$, and sum to $f$, meaning that $RR^(RR) = V_e xor V_o$, as desired. $qed$

]




#pagebreak()
#bibliography("works.bib")