=== Chapter 1A

1. Show that $alpha + beta = beta + alpha$ for all $alpha, beta in CC$.

Let $alpha = a + b i$ and $beta = c + d i$, where $a, b, c, d in RR$. 

Then we have:

$ alpha + beta 
  &= (a + b i) + (c + d i) & "definition of" alpha "and" beta \
  &= (a + c) + (b + d) i  & "definition of addition on" CC "(1.1)" \
  &= (c + a) + (d + b) i  & "commutativity of" RR \
  &= (c + d i) + (a + b i) & "definition of addition on" CC "(1.1)" \
  &= beta + alpha & "definition of" beta "and" alpha\ 
  &&qed $


2. Show that $(alpha + beta) + lambda = alpha + (beta + lambda)$ for all $alpha, beta, lambda in CC$.

Let $alpha = a + b i$, $beta = c + d i$, and $lambda = f + g i$, where $a, b, c, d, f, g in RR$. 

Then we have:

$ (alpha + beta) + lambda 
  &= ((a + b i) + (c + d i)) + (f + g i) & "definition of" alpha, beta, lambda \
  &= ((a + c) + (b + d)i) + (f + g i) & "definition of addition on" CC "(1.1)"\
  &= ((a + c) + f) + ((b + d) + g) i & "definition of addition on" CC "(1.1)"\
  &= (a + (c + f)) + (b + (d + g)) i & "associativity of addition on" RR \
  &= (a + b i) + ((c + f) + (d + g) i) & "definition of addition on" CC "(1.1)"\
  &= (a + b i) + ((c + f i) + (d + g i)) & "definition of addition on" CC "(1.1)"\
  &= alpha + (beta + lambda) & "definition of" alpha, beta, lambda\
  &&qed $


3. Show that $(alpha beta) lambda = alpha (beta lambda)$ for all $alpha, beta, lambda in CC$.

Let $alpha = a + b i$, $beta = c + d i$, and $lambda = f + g i$, where $a, b, c, d, f, g in RR$. 

Then we have:

$ (alpha beta) lambda
  &= ((a + b i)(c + d i))(f + g i) & "def. of" alpha, beta, lambda \
  &= ((a c - b d) + (a d + b c) i)(f + g i) & "def. of mult. on" CC "(1.1)" \
  &= ((a c - b d) f - (a d + b c) g) + ((a c - b d) g + (a d + b c) f) i &"same"\
  &= (a c f - b d f - a d g - b c g) + (a c g - b d g + a d f + b c f) i & "distrib. of" RR \
  &= (a c f - a d g - b c g - b d f) + (a c g + a d f + b c f - b d g)i & "commut. of" RR \
  &= (a (c f - d g) - b(c g + d f)) + (a (c g + d f) + b(c f - d g))i & "distrib. of" RR \ 
  &= (a + b i)((c f - d g) + (c g + d f) i) & "def. of mult. on" CC "(1.1)" \
  &= (a + b i)((c + d i)(f + g i)) & "def. of mult. on" CC "(1.1)" \
  &= alpha (beta lambda) & "def. of" alpha, beta, lambda \
  &&qed $

#pagebreak()

4. Show that $lambda (alpha + beta) = lambda alpha + lambda beta$ for all $lambda, alpha, beta in CC$.

Let $lambda = a + b i$, $alpha = c + d i$, and $beta = f + g i$, where $a, b, c, d, f, g in RR$. 

Then we have:

$ lambda (alpha + beta)
  &= (a + b i) ((c + d i) + (f + g i)) & "def. of" lambda, alpha, beta \
  &= (a + b i) ((c + f) + (d + g)i) & "def. of addition on" CC "(1.1)" \
  &= (a (c + f) - b (d + g)) + (a (d + g) + b (c + f))i & "def. of mult. on" CC "(1.1)" \
  &= (a c + a f - b d - b g) + (a d + a g + b c + b f)i & "distrib. of" RR \
  &= (a c - b d + a f - b g) + (a d + b c + a g + b f)i & "commut. of" RR \
  &= (a c - b d) + (a f - b g) + (a d + b c)i + (a g + b f)i & "distrib., assoc. of" RR\
  &= (a c - b d) + (a d + b c)i + ((a f - b g) + (a g + b f)i) & "commut., assoc. of" RR\
  &= (a + b i)(c + d i) + (a + b i)(f + g i) &  "def. of mult. on" CC "(1.1)" \
  &= lambda alpha + lambda beta & "def. of" lambda, alpha, beta \
  &&qed $

#v(50pt, weak: true)
  
5. Show that for every $alpha in CC$, there exists a unique $beta in CC$ such that $alpha + beta = 0$.

Let $alpha = a + b i$, where $a, b in RR$. If we take $beta = (-a) + (-b)i$, then 

$ alpha + beta 
  &= (a + b i) + ((-a) + (-b)i) & "definition of" alpha, beta \
  &= (a + (-a) + (b + (-b))i) & "definition of addition on" CC \
  &= (0) + (0)i & "additive inverse on" RR \
  &= 0 & "definition of 0 in" CC
  $

So given $alpha in CC$, a $beta in CC$  definitely exists such that $alpha + beta = 0$. 

To prove that this $beta$ is unique, suppose there is some other value $lambda in CC$ such that $alpha + lambda = 0$. Then $lambda = c + d i$, and $alpha + lambda = (a + b i) + (c + d i) = (a + c) + (b + d)i$. Since $alpha + lambda = 0$, we must have $a + c = 0$ and $b + d = 0$. But solving these equations, we find that $c = -a$ and $d = -b$, which are exactly the values we found above for $beta$. Thus, $lambda = beta$, i.e. this $beta in CC$ is unique. $qed$

#pagebreak()

6. Show that for every $alpha in CC$ with $alpha != 0$, there exists a unique $beta in CC$ such that $alpha beta = 1$.

Let $alpha = a + b i$. First, let's verify that at least one such $beta in CC$ exists. Let $beta = c + d i$. Then 

$ alpha beta 
  &= (a + b i) (c + d i)   & "def. of" alpha, beta  \
  &= (a c - b d) + (a d + b c) i & "def. of mult. on" CC "(1.1)" \
$

For this product to equal $1 in RR$, we must have:
- $a c - b d = 1$
- $a d + b c = 0$ 

Since $alpha != 0$, it must be that $a != 0$ or $b != 0$ (or both). Consider these three cases separately:

*Case 1: $a = 0, b != 0$*

In this case, our system simplifies to:
- $- b d = 1$
- $b c$ = 0

Since $b != 0$, $c$ must be $0$. And $d = frac(-1, b)$.

This tracks: $alpha beta$ = $(b i) (frac(-1, b)i) = -1 i^2 = (-1)(-1) = 1$, as desired.

*Case 2: $a != 0, b = 0$*

In this case, our system simplifies to:
- $a c = 1$
- $a d  = 0$

Since $a != 0$, $d$ must be $0$. And $c = frac(1, a)$.

This also tracks: $alpha beta$ = $(a + 0 i)(frac(1, a) + 0 i) = frac(a,a) = 1$, as desired.

*Case 3: $a != 0, b != 0$*

In this case, we have to solve this full system of two equations in two unknowns:

- $a c - b d = 1$
- $a d + b c = 0$ 

Using substitution, I obtained $c = frac(a, a^2 + b^2)$ and $d = frac(-b, a^2 + b^2)$.

We can see that this works:

$ alpha beta &= (a c - b d) + (a d + b c) i & "def. of mult. on" CC "(1.1)"\
  &= (a frac(a, a^2 + b^2) - b frac(-b, a^2 + b^2)) + (a frac(-b, a^2 + b^2) + b frac(a, a^2 + b^2)) & "values for c, d"\ 
  &= (frac(a^2, a^2 + b^2) + frac(b^2, a^2 + b^2)) + (frac(-a b, a^2 + b^2) + frac(a b, a^2 + b^2)) & "arithmetic, fractions" \
  &= (frac(a^2 + b^2, a^2 + b^2)) + (frac(0, a^2 + b^2)) & "more arithmetic" \
  &= 1 & "more fractions" $

Thus, for $alpha in CC, alpha != 0$, we found a $beta in CC$ such that $alpha beta = 1$. Furthermore, we can see that the values of $a, b$ uniquely determine the values of $c,d$ in all three Cases , so this $beta in CC$ is unique. $qed$

#pagebreak()

7. Show that $frac(-1 + sqrt(3)i, 2)$ is a cube root of 1 (meaning that its cube equals 1).

Well, 

$ (frac(-1 + sqrt(3)i, 2))^3
  &= frac(-1 + sqrt(3)i, 2) dot frac(-1 + sqrt(3)i, 2) dot frac(-1 + sqrt(3)i, 2) & "def. of cube" \
  &= frac((-1 + sqrt(3)i) (-1 + sqrt(3)i) (-1 + sqrt(3)i), 8) & "multiply fractions across" \
  &= frac((-2 - 2sqrt(3)i)(-1 + sqrt(3)i), 8) & "def. of mult. on" CC \
  &= frac(2 - 6i^2, 8) & "def. of mult. on" CC \
  &= frac(2 + 6, 8) & i^2 = -1 \
  &= 1 & "fractions and arithmetic, yo" \
  && qed
  $

8. Find two distinct square roots of $i$.

Well, $x = sqrt(i) <==> x^2 = i <==> (a + b i)^2 = i$, assuming $x in CC$, which seems reasonable.

Then $i = (a + b i)(a + b i) = (a^2 - b^2) + (2 a b) i$ by definition of complex multiplication.

Since $i = 0 + 1i$, we thus have a system of two equations emerge:
- $a^2 - b^2 = 0$
- $2 a b = 1$

Just doing some algebra, we find that $(frac(1, sqrt(2)), frac(1, sqrt(2)))$ and $(frac(-1, sqrt(2)), frac(-1, sqrt(2)))$ are the two solutions. Thus, our two distinct square roots of $i$ are:
+ $frac(1, sqrt(2)) + frac(1, sqrt(2)) i$
+ $frac(-1, sqrt(2)) + frac(-1, sqrt(2)) i$,
as desired. $qed$

#v(50pt, weak: true)

9. Find $x in RR^4$ such that $(4, -3, 1, 7) + 2x = (5, 9, -6, 8)$.

Well, let $x = vec(x_1, x_2, x_3, x_4)$. Then $2x = vec(2 x_1, 2 x_2, 2 x_3, 2 x_4)$, and $(4, -3, 1, 7) + 2x = vec(4 + 2 x_1, -3 + 2 x_2, 1 + 2 x_3, 7 + 2 x_4) := vec(5, 9, -6, 8)$. Since vectors are equal iff their components are equal, we can solve each of these four equations for the four components of $x$. Doing so, we obtain *$x_1 = 1/2, x_2 = 6, x_3 = -7/2, x_4 = 1/2$*. $qed$

#pagebreak()

10. Explain why there does not exist $lambda in CC$ such that 

$ lambda (2 - 3i, 5 + 4i, -6 + 7i) = (12 - 5i, 7 + 22i, -32 - 9i) $

By definition of scalar multiplication, $lambda$ will get multiplied by all three components of the left vector. By definition of vector equality, those vectors will be equal iff their components are all equal. By definition of complex number equality, both the real and imaginary parts must be equal for two complex numbers to be equal. 

Consider the equation produced by the first component of these vectors: $lambda (2 - 3i) = 12 - 5i$. If we let $lambda = a + b i$, then $lambda (2 - 3i) = (a + b i)(2 - 3i) = (2a + 3b) + (-3a + 2b)i$. 

Setting this equal to its corresponding component in our target vector, $12 - 5i$, we get a system of equations:
- 2a + 3b = 12
- -3a + 2b = -5

Solving this system, we find $a = 3, b = 2$. Thus, $lambda = 3 + 2i$ is the unique complex number that, when multiplied by $2 - 3i$, produces $12 - 5i$.

This value of $lambda$ actually works for the second vector component: $ lambda (5 + 4i) = (3 + 2i)(5 + 4i) = 7 + 22i $

But unfortunately, when we move on to the third vector component, $ lambda (-6 + 7i) = (3 + 2i)(-6 + 7i) &= -32 + 9i \ &!= -32 - 9i. $

Thus, the only value that worked for the first and second components fails to work for the third component. This means that there is no value that will work for all three components, and thus, no such $lambda in CC$ exists, as desired. $qed$

#v(50pt, weak: true)

11. Show that $(x + y) + z = x + (y + z)$ for all $x, y, z in FF^n$.

Well,

$ (x + y) + z 
  &= ((x_1, ..., x_n) + (y_1, ..., y_n)) + (z_1, ..., z_n) & "(1.11)"\
  &= (x_1 + y_1, ..., x_n + y_n) + (z_1, ..., z_n) & "(1.13)" \
  &= ((x_1 + y_1) + z_1, ..., (x_n + y_n) + z_n) & "(1.13)" \
  &= (x_1 + (y_1 + z_1), ..., x_n + (y_n + z_n))) & "assoc. of" RR \
  &= (x_1, ..., x_n) + (y_1 + z_1, ..., y_n + z_n) & "(1.13)" \
  &= (x_1, ..., x_n) + ((y_1, ..., y_n) + (z_1, ..., z_n)) & "(1.13)" \
  &= x + (y + z) & "(1.11)"\
  &&qed $


#pagebreak()

12. Show that $(a b)x = a(b x)$ for all $x in FF^n$ and all $a, b in FF$.

Well, 

$  (a b) x 
  &= (a b)(x_1, dots, x_n) & "(1.11): def of" x \
  &= (a b x_1, dots, a b x_n) & "(1.18: scalar mult in" FF^n ")" \
  &= (a (b x_1), dots, a (b x_n)) & "assoc. of" FF \
  &= a (b x_1, dots, b x_n) & "(1.18)" \
  &= a (b x) & "(1.11)" \
  && qed
$

#v(30pt, weak: true)

13. Show that $1x = x$ for all $x in FF^n$.

Well,

$ 1x
  &= 1 (x_1, dots, x_n) & "(1.11): def of" x \
  &= (1 x_1, dots, 1 x_n) & "(1.18): scalar mult in" FF^n \
  &= (x_1, dots, x_n) & "1 is mult. identity in" FF \
  &= x & "(1.11)" \
  && qed
$

#v(30pt, weak: true)

14. Show that $lambda (x + y) = lambda x + lambda y$ for all $lambda in FF$ and all $x, y in FF^n$.

Well,

$ lambda (x + y)
  &= lambda ((x_1, dots, x_n) + (y_1, dots, y_n)) & "(1.11): def of" x, y \
  &= lambda (x_1 + y_1, dots, x_n + y_n) & "(1.13): vector addition" \
  &= (lambda (x_1 + y_1), dots, lambda (x_n + y_n)) & "(1.18): scalar mult in" FF^n \
  &= (lambda x_1 + lambda y_1, dots, lambda x_n + lambda y_n) & "distrib. of" FF \
  &= (lambda x_1, dots, lambda x_n) + (lambda y_1, dots, lambda y_n) & "(1.13)" \
  &= lambda (x_1, dots, x_n) + lambda (y_1, dots, y_n) & "(1.18)" \
  &= lambda x + lambda y & "(1.11)" \
  && qed
$

15. Show that $(a + b)x = a x + b x$ for all $a, b in FF$ and all $x in FF^n$.

Well, since $(a + b) in FF$ since $FF$ is closed under addition, we have:

$ (a + b)x
  &= (a + b) (x_1, dots, x_n) & "(1.11): def of" x \
  &= ((a + b) x_1, dots, (a + b) x_n) & "(1.18): scalar mult. in" FF^n \
  &= (x_1 (a + b), dots, x_n (a + b)) & "commut. of" FF \
  &= (x_1 a + x_1 b, dots, x_n a + x_n b) & "distrib. of" FF \
  &= (a x_1 + b x_1, dots, a x_n + b x_n) & "commut. of" FF \
  &= (a x_1, dots, a x_n) + (b x_1, dots, b x_n) & "(1.13): vector addition" \
  &= a (x_1, dots, x_n) + b (x_1, dots, x_n) & "(1.18)" \
  &= a x + b x & "(1.11)" \
  && qed
$