=== Chapter 1B

1. Prove that $-(-v) = v$ for every $v in V$.

According to (1.28), $-v$ denotes the additive inverse of $v$. 

Thus, $-(-v)$ denotes the additive inverse of $-v$. 

Then by definition of the additive inverse, $-(-v) + -v = 0$.

But $-v$ is the additive inverse of $v$, so $v + -v = 0$.

And since the additive inverse is unique, and since both $v$ and $-(-v)$ are serving as additive inverses of $-v$, it must be the case that $v = -(-v)$. $qed$

#v(30pt, weak: true)

2. Suppose $a in FF, v in V$, and $a v = 0$. Prove that $a = 0$ or $v = 0$.

Suppose, to the contrary, that $a in FF, v in V$, $a v = 0$, and yet it is not the case that $a = 0$ or $v = 0$. Thus, by De Morgan's Law, $a !=0$ and $v != 0$. 

However, we can arrive at a contradiction by noting that, since $a in FF$ and $a != 0$, $a$ will have a multiplicative inverse $a^(-1) in FF$ such that $a a^(-1) = a^(-1) a = 1$. (Axler denotes this $1/a$, but I will use $a^(-1)$.)

Thus,

$ & a v = 0 & "assumption"\
<=> & a^(-1) (a v) = a^(-1) 0  & "left multiply by" a^(-1) \
<=> & (a^(-1) a) v = 0         & "assoc. of" FF, "definition of" 0 \
<=> & v = 0                    & "(1.5):" a^(-1) a = 1
$

But this contradicts our assumption that $v != 0$. Thus, it must be that $a = 0$ or $v = 0$, as desired. $qed$

#v(30pt, weak: true)

3. Suppose that $v, w in V$. Explain why there exists a unique $x in V$ such that $v + 3x = w$.

Intuitively, we can "solve for $x$" in that equation using basic algebra to find that $x = 1/3 (w - v)$. To make this more rigorous, we can think about the $3x$ term as transforming, additively, $v$ into $w$. 

Let's simplify the problem slightly by finding a vector $y in V$ such that $v + y = w$. (In other words, temporarily take the 3 out of the equation.) Letting $y = -v + w$, we can see that 

$ v + y = v + (-v + w) = (v + -v) + w = 0 + w = w $ 

by associativity and the definition of $0$. (Note that $-v + w in V$ by (1.19): def. of addition on $V$).

Finally, let $y = 3x$. Since $3 != 0$, it has a multiplicative inverse $1/3$. Using this inverse to solve for $x$, we obtain $x = 1/3 y = 1/3 (-v + w)$. Since $1/3 in RR$ is a scalar, $1/3 (-v + w) in V$. Thus, such a vector $x$ exists.

To prove that $x$ is unique, imagine to the contrary that there exist two different vectors $x_1, x_2 in V$ such that $v + 3 x_1 = w$ and $v + 3 x_2 = w$. This implies that $v + 3 x_1 = v + 3 x_2$. Adding $-v$ to both sides and multiplying both sides by $1/3$, we find that $x_1 = x_2$. This contradiction implies that $x$ is unique, as desired. $qed$

#pagebreak()

4. The empty set is not a vector space. The empty set fails to satisfy only one of the requirements listed in the definition of a vector space (1.20). Which one?

Commutativity, associativity, the additive inverse, the multiplicative identity, and distributive properties are hold vacuously for the empty set. But there is no *additive identity* because there is no element in the empty set (it's empty!), which makes it impossible for there "to exist an element $0 in V$ such that $v + 0 = v$ for all $v in V.$"

#v(30pt, weak: true)

5. Show that in the definition of the vector space (1.20), the additive inverse condition can be replaced with the condition that $ 0v = 0 "for all" v in V. $

#h(13pt) Here the $0$ on the LHS is the number $0$, and the $0$ on the RHS is the additive identity of $V$.

From a strategy perspective, it seems like the additive inverse condition can be replaced with this new condition if it can be derived from our new condition and the other, unchanged properties.

So assume that:
- all vector space properties other than the "additive inverse" property hold
- $0 v = bold(0), forall v in V$. 

We would like to show that there exists an element $bold(0) in V$ such that $v + bold(0) = v$ for all $v in V$.

TODO: finish proof

#pagebreak()

6. Let $infinity$ and $-infinity$ denote two distinct objects, neither of which is in $RR$. Define an addition and scalar multiplication on $RR union {infinity, -infinity}$ as you could guess from the notation. Specifically, the sum and product of two real numbers is as usual, and for $t in RR$ define 

#columns()[
$
  t infinity = cases(
    -infinity "if" t < 0,
    0 "if" t = 0,
    infinity "if" t > 0
  )
$
#colbreak() 
$
  t (-infinity) = cases(
    infinity "if" t < 0,
    0 "if" t = 0,
    -infinity "if" t > 0
  )
$
]

and 

$
  t + infinity &= infinity + t = infinity + infinity = infinity, \
  t + (-infinity) &= (-infinity) + t = (-infinity) + (-infinity) = -infinity, \
  infinity + (-infinity) &= (-infinity) + infinity = 0.
$

With these operations of addition and scalar multiplication, is $RR union {infinity, -infinity}$ a vector space over $RR$? Explain.

Well, let's check the various properties of a vector space to see if they all hold for $RR union {infinity, -infinity}$:

- *commutativity* holds because it holds for all reals, and it holds for $infinity$ and $-infinity$ per the addition rules defined above
- *associativity* doesn't hold, though, unfortunately.  As a counter-example, note that $ (infinity + -infinity) + 1 != infinity + (-infinity + 1) $ On the left, the infinities cancel each other perfectly and a final sum of $1$ emerges, whereas on the right, the $-infinity$ clobbers the $1$, giving us a final sum of $0$.

Thus, without associativity, $RR union {infinity, -infinity}$ is *not* a vector space. $qed$

*Side Note:* This reminds me of how floating-point operations aren't associative, especially at the edges and extremes. For example, Bryant and O'Hallaron point out on page 123 that #quote(block:true)[Addition over real numbers also  forms an abelian group, but we must consider what effect rounding has on these properties... The operation is commutative, with $x +^f y = y +^f x$ for all values of $x$ and $y$. On the other hand, the operation is not associative. For example, with single-precision floating point the expression `(3.14+1e10)-1e10` evaluates to `0.0`--the value 3.14 is lost due to rounding. On the other hand, the expression `3.14+(1e10-1e10` evaluates to `3.14`... @csapp.]


#v(30pt, weak: true)

#pagebreak()

7. Suppose $S$ is a nonempty set. Let $V^S$ denote the set of functions from $S$ to $V$. Define a natural addition and scalar multiplication on $V^S$, and show that $V^S$ is a vector space with these definitions.

This is similar to the example on pp. 13-14, except that example considered $FF^S$, the set of functions from $S$ to $FF$, where $FF$ means $RR$ or $CC$. Now, we're considering $V^S$, the set of functions from $S$ to $V$, where $V$ denotes a vector space over $FF$ (1.29).

Despite that difference, it's still tempting to define the sum and product operations on $V^S$ similarly:
- For $f, g in V^S$, define _sum_ $f + g in V^S$ as $(f + g)(x) := f(x) + g(x), forall x in S$.
- For $f in V^S$ and $lambda in FF$, define _product_ $lambda f in V^S$ as $(lambda f)(x) := lambda f(x), forall x in S$.

Having defined these operations, we must now show that $V^S$ is a vector space. Let's consider the required properties of a vector space in turn:

- *commutativity*. Take $u, v in V^S$. Then $forall x in S$, $ (u + v)(x) = u(x) + v(x) = v(x) + u(x) = (v + u)(x), $ using the definition of our _sum_ above and the fact that vector space V (of which $u(x)$ and $v(x)$ are elements) is itself commutative.

- *associativity, addition*. Take $u, v, w in V^S$. Then $forall x in S$, 

$
((u + v) + w)(x) 
  &= (u + v)(x) + w(x)     & "definition of" italic("sum") \
  &= (u(x) + v(x)) + w(x)  & "definition of" italic("sum") \
  &= u(x) + (v(x) + w(x))  & "assoc. of" V, "since" u(x), v(x), w(x) in V \
  &= u(x) + (v + w)(x)     & "definition of" italic("sum") \
  &= (u + (v + w))(x)      & "definition of" italic("sum") \
$

- *associativity, scalar multiplication*. Take $f in V^S$ and $a, b in FF$. Then $forall x in S$, 

$
((a b) f)(x)
  &= (a b) f(x)     & "definition of" italic("product") \
  &= a (b f(x))     & "assoc. of vector space" V, " since" f(x) in V \
  &= a (b f)(x)   & "definition of" italic("product") \
$

- *additive identity*. Define $0 in V^S$ as the function from $S$ to $FF$ where $0(x) = 0, forall x in S$, where the zero on the RHS is the additive identity of $V$. (This $0$ is guaranteed to exist, since $V$ is a vector space.) To demonstrate that this $0 in V^S$ is really the additive identity for $V^S$, take $f in V^S$. Then for all $x in S$, $ (f + 0)(x) = f(x) + 0(x) = f(x) + 0 = f(x), $ by definition of _sum_, our definition of the $0$ function, and the fact that the last $0$ is the additive identity of $V$. Thus, our $0$ function is indeed the additive identity for $V^S$.

- *additive inverse*. Take $f in V^S$. Then we can absolutely construct a $g in V^S$ such that $g$ is the additive inverse of $f$. In particular, define $g(x) := -f(x), forall x in S$. $-f(x)$ is guaranteed to exist, since $f(x) in V$, a vector space that has an additive inverse. And for any $x in S$, $ (f + g)(x) = f(x) + g(x) = f(x) + (-f(x)) = 0, $ by definition of _sum_, our definition of $g$, and the definition of the additive identity for $V$. Thus, our additive inverse of $f$ exists.

#pagebreak()
- *multiplicative identity*. Take $f in V^S$. Then for all $x in S$, $ (1f)(x) = 1 f(x) = f(x), $ by definition of _product_ and the multiplicative identity of vector space $V$.

- *distributive properties*. Take $a, b in FF$ and $f, g in V^S$. Then $forall x in S$,

$
  (a (f + g))(x)
    &= a ((f + g)(x))  & "definition of" italic("product") \
    &= a(f(x) + g(x))  & "definition of" italic("sum") \
    &= a f(x) + a g(x) & "distributive properties of V"
$

and 

$
  ((a + b)f)(x)
    &= (a + b) f(x)  &= "definition of" italic("product") \
    &= a f(x) + b f(x)  &= "distributive properties of" V
  
$

And thus, $V^S$ is a vector space. Establishing these properties relied heavily on the fact that the co-domain of elements of $V^S$ is $V$, a vector space, and thus the various vector space properties hold for the elements obtained by applying arbitrary functions in $V^S$ to elements of $S$. $qed$

#pagebreak()

8. Suppose $V$ is a real vector space.
- The _complexification_ of $V$, denoted by $V_C$, equals $V times V$ An element of $V_C$ is an ordered pair $(u,v)$ , where $u,v in V$, but we write this as $u + i v$.
- Addition on $V_C$ is defined by $ (u_1 + i v_1) + (u_2 + i v_2) = (u_1 + u_2) + i(v_1 + v_2) $ for all $u_1, v_1, u_2, v_2 in V.$
- Complex scalar multiplication on $V_C$ is defined by $ (a + b i)(u + i v) = (a u - b v) + i (a v + b u) $ for all $a, b in RR$ and all $u, v in V$.

Prove that with the definitions of addition and scalar multiplication as above, $V_C$ is a complex vector space.

Just like the previous problems, we can verify the properties of a vector space:

- *commutativity*. Take $a + i b, c + i d in V_C$, implying that $a, b, c, d in V$. Then 
$ 
  (a + i b) + (c + i d) 
  &= (a + c) + i(b + d)     & "definition of addition on" V_C \
  &= (c + a) + i(d + b)     & "commutativity of" V \
  &= (c + i d) + (a + i b)  & "definition of addition on" V_C \
$

- *associativity, addition*. Take $a + i b, c + i d, x + i y in V_C$, implying that $a, b, c, d, x, y in V$. Then
$ 
  ((a + i b) + (c + i d)) + (x + i y)
  &= ((a + c) + i(b + d)) + (x + i y)    & "definition of addition on" V_C \
  &= ((a + c) + x) + i((b + d) + y)      & "definition of addition on" V_C \
  &= (a + (c + x)) + i(b + (d + y))      & "assoc. of" V \
  &= (a + i b) + ((c + x) + i(d + y))      & "definition of addition on" V_C \
  &= (a + i b) + ((c + i d) + (x + i y))      & "definition of addition on" V_C \
$

- *associativity, scalar multiplication*. Take $x + i y in V_C$ and $a, b in RR$. Then

$
(a b) (x + i y)
  &= (a b + 0i) (x + i y)     & "promote real to complex" \
  &= ((a b)x - 0y) + i((a b) y + 0 x) & "def. of scalar multiplication" \
  &= ((a b)x) + i ((a b) y)    & "simplify, def. of 0" \
  &= a (b x) + i (a (b y))     & "assoc. of" V \
  &= (a + 0 i) (b x + i (b y))  & "def. of scalar multiplication" \
  &= (a + 0 i) ((b + 0i)( x + i y))  & "def. of scalar multiplication" \
  &= (a) ((b)( x + i y))  & "simplify, def. of 0" \
  &= a (b( x + i y))  & "drop extra parens" \
$

#pagebreak()

- *additive identity*. There absolutely exists an element $0 in V_C$ such that $(a + i b) + 0 = (a + i b)$ for all $(a + i b) in V_C$. In particular, let $0 = 0 + i 0$, where both $0$'s on the RHS are the additive identity of $V$. Then $ (a + i b) + 0 = (a + i b) + (0 + i 0) = (a + 0) + i (b + 0) = a + i b, $

by our definition of $0$, the definition of addition on $V_C$, and the fact that all but the first $0$ are the additive identity of $V$. Thus, there exists an element $0 = 0 + i 0$ that is an additive identity of $V_C$.

- *additive inverse*. Take $a + i b in V_C$, implying $a, b in V$. Then we can absolutely construct a $(c + i d) in V_C$ such that $(c + i d)$ is the additive inverse of $(a + i b)$. In particular, let $c = -a$ and $d = -b$, which are guaranteed to exist by $V$'s additive inverse property. Then $ (a + i b) + (c + i d) = (a + i b) + (-a + i (-d)) = (a + (-a)) + i(d + (-d)) = 0 + i 0 = 0, $ the additive identity we found previously. This confirms the existence of an additive inverse for all $(a + i b) in V_C$.

- *multiplicative identity*. Take $(a + i b) in V_C$. Then $ 1 (a + i b) = (1 + i 0)(a + i b) = (1a - 0b) + i(1b + 0a) = (a - 0) + i(b + 0) = a + i b, $ by definition of multiplication on $V_C$, the fact that $0v = 0$, the fact that $1$ is a multiplicative identity on $V$, and basic simplification. Thus, $1 v = v, forall v in V_C$.

- *distributive properties*. Take $s, t in RR$ and $(a + i b), (c + i d) in V_C$, implying $a, b, c, d in V$. 

Then

$
  s ((a + i b) + (c + i d))
    &= s ((a + c) + i ( b + d))  & "def. of addition" \ 
    &= (s + 0i) ((a + c) + i ( b + d))  & "promote to complex" \
    &= (s (a + c) - 0(b + d)) + i(s (b + d) + 0(a + c))  & "def. of scalar mult." \
    &= (s a + s c) + i(s b + s d)  & "distrib. of" V, "simplify zeros" \
    &= (s a + i (s b)) + (s c + i (s d))  & "def. of addition" \
    &= (s + 0 i) (a + i b) + (s + 0 i) (c + i d)  &   "def. of scalar mult."  \
    &= s (a + i b) + s (c + i d)   & "simplify zeros"
$

and 

$
  (s + t)(a + i b)
    &= ((s + t) + 0i) (a + i b)  & "promote to complex" \ 
    &= ((s + t)a - 0b) + i ((s + t)b + 0a)  & "def. of scalar mult." \
    &= ((s + t)a) + i ((s + t)b) & "simplify zeros" \
    &= (s a + t a) + i (s b + t b)  & "distrib. of V"  \
    &= (s a + i (s b)) + (t a + i (t b))   & "def. of addition"  \
    &= (s + i 0)(a + i b) + (t + i 0)(a + i b)  & "def. of scalar mult." \
    &= s (a + i b) + t (a + i b)  & "simplify zeros"
$

Thus, $V_C$ as constructed is a complex vector space. This essentially followed from the fact, as Axler pointed out, that our real scalars can be promoted to complex scalars: $a arrow a + i 0$.  $qed$

#pagebreak()
#bibliography("works.bib")
