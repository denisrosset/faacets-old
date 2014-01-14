<TeXmacs|1.0.7.18>

<style|generic>

<\body>
  <doc-data|<doc-title|Can a bipartite inequality be made
  symmetric?>|<doc-author|<author-data|<author-name|Denis
  Rosset>>>|<doc-date|January 9, 2014>>

  <abstract-data|<abstract|We give a procedure to find whether a bipartite
  inequality has a form which is invariant under the permutation of
  parties.>>

  Let <math|I=I<around*|(|a b<mid|\|>x y|)>> and
  <math|u\<in\><with|math-font|Bbb*|R>> describe a bipartite inequality:

  <\equation>
    <big|sum><rsub|a b x y>I<around*|(|a b<mid|\|>x y|)>P<around*|(|a
    b<mid|\|>x y|)>\<leqslant\>u.
  </equation>

  <em|By considering subsets of parties, fully symmetric multipartite
  inequalities can also be recognized. The case of, e.g., cyclic permutations
  is unsolved.>

  We define the equivalence relation <math|I\<sim\>J> when
  <math|I=J+<text|signaling terms>>. We assume that Alice and Bob have the
  same number of inputs, and that the number of outputs for the inputs
  <math|x=1,2,\<ldots\>> and <math|y=1,2,\<ldots\>> is the same for Alice and
  Bob.

  Let <math|G> be the permutation group acting on outputs and inputs of a
  single party. We write <math|G<rsub|<text|A>>> the local permutation group
  for Alice, acting on pairs <math|<around*|(|a,x|)>>, and
  <math|G<rsub|<text|B>>> the local permutation group for Bob, acting on
  pairs <math|<around*|(|b,y|)>>. The groups
  <math|G<rsub|<text|A>>,G<rsub|<text|B>>> include relabelings of outputs and
  inputs. Let <math|e> be the identity element for these groups.

  The action of <math|g<rsub|<text|A>>\<in\>G<rsub|<text|A>>> on
  <math|I\<rightarrow\>I<rsup|g<rsub|A>>> is described by:

  <\equation>
    I<rsup|g<rsub|A>><around*|(|a<rprime|'>b<mid|\|>x<rprime|'>y|)>=I<around*|(|a
    b<mid|\|>x y|)>,<space|2em><around*|(|a<rprime|'>,x<rprime|'>|)>=<around*|(|a,x|)><rsup|g<rsub|<text|A>>>,
  </equation>

  and the same for <math|g<rsub|<text|B>>\<in\>G<rsub|<text|B>>>.

  Let <math|H=<around*|{|e,\<pi\>|}>> be the permutation group of parties,
  with <math|e> the identity and <math|\<pi\>> the swapping of Alice and Bob,
  such that <math|I<rsup|\<pi\>><around*|(|b a<mid|\|>y x|)>=I<around*|(|a
  b<mid|\|>x y|)>>.

  Then any relabeling of the outputs, inputs and parties of <math|I> can be
  described by <math|r=<around*|[|g<rsub|<text|A>>,g<rsub|<text|B>>,h|]>>,
  with <math|g<rsub|<text|A>>\<in\>G<rsub|<text|A>>,g<rsub|<text|B>>\<in\>G<rsub|<text|B>>,h\<in\>H>,
  and the action <math|I<rsup|<around*|[|g<rsub|<text|A>>,g<rsub|<text|B>>,h|]>>=<around*|(|<around*|(|I<rsup|g<rsub|<text|A>>>|)><rsup|g<rsub|<text|B>>>|)><rsup|h>>.

  \ Let <math|R> be the group of all these relabelings.

  <\definition>
    The inequality <math|I> is said to be symmetric if it is invariant under
    permutation <math|\<pi\>> of Alice and Bob:
    <math|I<rsup|\<pi\>>\<sim\>I>.
  </definition>

  We are now interested in the following: is there any
  <math|g<rsub|<text|A>>\<in\>G<rsub|<text|A>>> and
  <math|g<rsub|<text|B>>\<in\>G<rsub|<text|B>>> so that
  <math|I<rsup|<around*|[|g<rsub|<text|A>>,g<rsub|<text|B>>,e|]>>=<around*|(|I<rsup|<around*|[|g<rsub|<text|A>>,g<rsub|<text|B>>,e|]>>|)><rsup|<around*|[|e,e,\<pi\>|]>>>
  ?

  To answer this question, we will look at the symmetry subgroup leaving
  <math|I> invariant.

  <\definition>
    The <em|symmetry subgroup> <math|S<rsub|I>> of the inequality <math|I> is
    the set of all elements <math|r\<in\>R> leaving <math|I> invariant:

    <\equation>
      S<rsub|I>=<around*|{|r\<in\>R<mid|\|>I<rsup|r>\<sim\>I|}>.
    </equation>

    The group axioms can be verified easily for <math|S<rsub|I>>.
  </definition>

  The generators of the symmetry subgroup <math|S<rsub|I>> can be split in
  two types: those of the form <math|<around*|[|g<rsub|<text|A>>,g<rsub|<text|B>>,e|]>>
  who do not permute the parties, and those of the form
  <math|<around*|[|g<rsub|<text|A>>,g<rsub|<text|B>>,\<pi\>|]>> who permute
  the parties.

  <\lemma>
    <label|Lemma:AtMostOne>It is always possible to find generators for
    <math|S<rsub|I>> so that at most one generator permutes the parties.
  </lemma>

  <\proof>
    If the set <math|<around*|{|s<rsub|1>,s<rsub|2>,s<rsub|3>,\<ldots\>|}>>
    generates <math|S<rsub|I>> and, say, <math|s<rsub|1>> and
    <math|s<rsub|2>> both permute the parties, it is sufficient to replace
    <math|s<rsub|2><rprime|'>\<rightarrow\>s<rsub|2>s<rsub|1>> which permutes
    the parties twice, and thus does not permute them. This operation can be
    repeated until at most one generator permutes the parties.
  </proof>

  Now comes the main proposition:

  <\proposition>
    <label|Proposition>To determine if the inequality <math|I> has a
    symmetric form, it is sufficient to look at the generators of
    <math|S<rsub|I>>, after using Lemma <reference|Lemma:AtMostOne>. If there
    is no generator which permutes the parties, the inequality cannot be put
    into a symmetric form. If there is a single generator of the form
    <math|s=<around*|[|g<rsub|1>,g<rsub|2>,\<pi\>|]>>, then we test for the
    existence of single party relabeling <math|g\<in\>G> such that the
    inequality is invariant under <math|s<rprime|'>=<around*|[|g<rsup|-1>
    g<rsub|2>,g*g<rsub|1>,e|]>>.

    If and only if there exists such <math|g>, the inequality has a symmetric
    form.
  </proposition>

  Note: most of the time, the generator <math|s=<around*|[|g<rsub|1>,g<rsub|2>=g<rsub|1><rsup|-1>,\<pi\>|]>>
  which has the trivial solution <math|g=g<rsub|1><rsup|-1>>.

  <subsection|Examples>

  For the following examples, the structure of the symmetry group has been
  computed using <verbatim|Faacets>.

  <paragraph*|CHSH form given by Ito. <emdash>>Let us take the form of CHSH
  given in Avis&Ito list:

  <\equation>
    <around*|\<langle\>|A<rsub|1>B<rsub|1>|\<rangle\>>+<around*|\<langle\>|A<rsub|2>B<rsub|1>|\<rangle\>>-<around*|\<langle\>|A<rsub|1>B<rsub|2>|\<rangle\>>+<around*|\<langle\>|A<rsub|2>B<rsub|2>|\<rangle\>>\<leqslant\>2,
  </equation>

  with the following generators for its symmetry group:

  <\itemize-minus>
    <item>output permutations: <math|A<rsub|1><around*|(|1,2|)>
    A<rsub|2><around*|(|1,2|)> B<rsub|1><around*|(|1,2|)>
    B<rsub|2><around*|(|1,2|)>>,

    <item>output and input permutations: <math|A<rsub|1><around*|(|1,2|)>
    B<around*|(|1,2|)>> and <math|B<rsub|2><around*|(|1,2|)>*A<around*|(|1,2|)>>,

    <item>party permuting generator: <math|A<around*|(|1,2|)>
    B<around*|(|1,2|)> <around*|(|A,B|)>>.
  </itemize-minus>

  <em|Notation:>

  <\itemize-minus>
    <item><math|A<rsub|x><around*|(|<text|cycle>|)>> applies the permutation
    given by <em|cycle> to the outputs of Alice for the given input <math|x>,

    <item><math|A<around*|(|<text|cycle>|)>> applies the permutation given by
    <em|cycle> to the inputs of Alice (the last two notations apply also to
    Bob),

    <item><math|<around*|(|A,B|)>> permutes the parties.
  </itemize-minus>

  Coming back to Proposition <reference|Proposition>, we look for an element
  <math|g> such that our inequality is invariant under
  <math|<around*|[|g<rsup|-1> A<around*|(|1,2|)>,g B<around*|(|1,2|)>,e|]>>.
  This element is <math|g=>''permutation of inputs
  <math|<around*|(|1,2|)>>'', which gives:

  <\equation>
    <around*|\<langle\>|A<rsub|1>B<rsub|1>|\<rangle\>>+<around*|\<langle\>|A<rsub|2>B<rsub|1>|\<rangle\>>+<around*|\<langle\>|A<rsub|1>B<rsub|2>|\<rangle\>>-<around*|\<langle\>|A<rsub|2>B<rsub|2>|\<rangle\>>\<leqslant\>2.
  </equation>

  <paragraph*|Another inequality by Ito. <emdash>>

  The inequality is:

  <\eqnarray>
    <tformat|<table|<row|<cell|5 <left|langle>A<rsub|1>
    \ B<rsub|1><right|rangle>+ 4 <left|langle>A<rsub|2>
    \ B<rsub|1><right|rangle>- 3 <left|langle>A<rsub|3>
    \ B<rsub|1><right|rangle>- 3 <left|langle>A<rsub|4>
    \ B<rsub|1><right|rangle>>|<cell|>|<cell|>>|<row|<cell|+ 6
    <left|langle>A<rsub|5> \ B<rsub|1><right|rangle>+ 6
    <left|langle>A<rsub|6> \ B<rsub|1><right|rangle>- 1
    <left|langle>A<rsub|7> \ B<rsub|1><right|rangle>- 3
    <left|langle>A<rsub|1> \ B<rsub|2><right|rangle>- 2
    <left|langle>A<rsub|2> \ B<rsub|2><right|rangle>>|<cell|>|<cell|>>|<row|<cell|+
    2 <left|langle>A<rsub|3> \ B<rsub|2><right|rangle>+ 2
    <left|langle>A<rsub|4> \ B<rsub|2><right|rangle>+ 6
    <left|langle>A<rsub|5> \ B<rsub|2><right|rangle>- 3
    <left|langle>A<rsub|8> \ B<rsub|2><right|rangle>- 3
    <left|langle>A<rsub|1> \ B<rsub|3><right|rangle>>|<cell|>|<cell|>>|<row|<cell|-
    2 <left|langle>A<rsub|2> \ B<rsub|3><right|rangle>+ 2
    <left|langle>A<rsub|3> \ B<rsub|3><right|rangle>+ 2
    <left|langle>A<rsub|4> \ B<rsub|3><right|rangle>+ 6
    <left|langle>A<rsub|6> \ B<rsub|3><right|rangle>+ 3
    <left|langle>A<rsub|8> \ B<rsub|3><right|rangle>+ <left|langle>A<rsub|1>
    \ B<rsub|4><right|rangle>+ 2 <left|langle>A<rsub|2>
    \ B<rsub|4><right|rangle>>|<cell|>|<cell|>>|<row|<cell|+
    <left|langle>A<rsub|3> \ B<rsub|4><right|rangle>+ <left|langle>A<rsub|4>
    \ B<rsub|4><right|rangle>+ <left|langle>A<rsub|7>
    \ B<rsub|4><right|rangle>- 2 <left|langle>A<rsub|1>
    \ B<rsub|5><right|rangle>+ 2 <left|langle>A<rsub|2>
    \ B<rsub|5><right|rangle>+ <left|langle>A<rsub|1>
    \ B<rsub|6><right|rangle>+ <left|langle>A<rsub|3>
    \ B<rsub|6><right|rangle>>|<cell|>|<cell|>>|<row|<cell|+
    <left|langle>A<rsub|1> \ B<rsub|7><right|rangle>+ <left|langle>A<rsub|4>
    \ B<rsub|7><right|rangle>- 1 <left|langle>A<rsub|3>
    \ B<rsub|8><right|rangle>+ <left|langle>A<rsub|4>
    \ B<rsub|8><right|rangle>>|<cell|\<leqslant\>>|<cell|34,>>>>
  </eqnarray>

  with the generators:

  <\itemize-minus>
    <item>output permutations: <math|A<rsub|1><around*|(|1,2|)>
    A<rsub|2><around*|(|1,2|)> \<ldots\> A<rsub|8><around*|(|1,2|)>
    B<rsub|1><around*|(|1,2|)> B<rsub|2><around*|(|1,2|)>\<ldots\>B<rsub|8><around*|(|1,2|)>>,
    not surprising because the inequality is a correlation inequality with no
    marginal terms,

    <item>output and input permutations: <math|A<rsub|8><around*|(|1,2|)>
    A<around*|(|5,6|)> B<around*|(|2,3|)>>.
  </itemize-minus>

  As the symmetry group of the inequality does not have a generator permuting
  the parties, the inequality does not have a symmetric form.

  <paragraph*|The inequality <math|I3322> given by Ito. <emdash>>

  <\eqnarray>
    <tformat|<table|<row|<cell|<around*|\<langle\>|A<rsub|1>|\<rangle\>>-
    <around*|\<langle\>|B<rsub|1>|\<rangle\>>+
    <around*|\<langle\>|A<rsub|2>|\<rangle\>>-
    <around*|\<langle\>|B<rsub|2>|\<rangle\>>>|<cell|>|<cell|>>|<row|<cell|+
    <around*|\<langle\>|A<rsub|1> B<rsub|1>|\<rangle\>>+
    <around*|\<langle\>|A<rsub|1> \ B<rsub|2>|\<rangle\>>-
    <around*|\<langle\>|A<rsub|1> \ B<rsub|3>|\<rangle\>>>|<cell|>|<cell|>>|<row|<cell|+
    <around*|\<langle\>|A<rsub|2> B<rsub|1>|\<rangle\>>+
    <around*|\<langle\>|A<rsub|2> \ B<rsub|2>|\<rangle\>>+
    <around*|\<langle\>|A<rsub|2> \ B<rsub|3>|\<rangle\>>>|<cell|>|<cell|>>|<row|<cell|-
    <around*|\<langle\>|A<rsub|3> \ B<rsub|1>|\<rangle\>>+
    <around*|\<langle\>|A<rsub|3> \ B<rsub|2>|\<rangle\>>>|<cell|\<leqslant\>>|<cell|4,>>>>
  </eqnarray>

  with the generators:

  <\itemize-minus>
    <item>input and output permutations: <math|A<rsub|3><around*|(|1,2|)>
    B<around*|(|1,2|)>> and <math|B<rsub|3><around*|(|1,2|)>
    A<around*|(|1,2|)>>,

    <item>party permuting generator: <math|A<rsub|1><around*|(|1,2|)>
    A<rsub|2><around*|(|1,2<rsub|>|)> B<rsub|1><around*|(|1,2|)>
    B<rsub|2><around*|(|1,2|)> A<around*|(|1,2|)> B<around*|(|1,2|)>
    <around*|(|A,B|)>>.
  </itemize-minus>

  Here, <math|g<rsub|1>=A<rsub|1><around*|(|1,2|)> A<rsub|2><around*|(|1,2|)>
  A<around*|(|1,2|)>> and <math|g<rsub|2>=B<rsub|1><around*|(|1,2|)>
  B<rsub|2><around*|(|1,2|)> B<around*|(|1,2|)>>. We notice that, as single
  party relabelings, <math|g<rsub|1>=g<rsub|2>> and
  <math|g<rsub|1>g<rsub|1>=g<rsub|2>g<rsub|2>=e>.

  Then <math|g=>''permute the output for inputs 1 and 2, and permute the
  inputs 1 and 2'', which finds the following symmetric form:

  <\eqnarray>
    <tformat|<table|<row|<cell|-<around*|\<langle\>|A<rsub|2>|\<rangle\>>-
    <around*|\<langle\>|B<rsub|1>|\<rangle\>>-<around*|\<langle\>|A<rsub|1>|\<rangle\>>-
    <around*|\<langle\>|B<rsub|2>|\<rangle\>>>|<cell|>|<cell|>>|<row|<cell|-
    <around*|\<langle\>|A<rsub|2> B<rsub|1>|\<rangle\>>-
    <around*|\<langle\>|A<rsub|2> \ B<rsub|2>|\<rangle\>>+
    <around*|\<langle\>|A<rsub|2> \ B<rsub|3>|\<rangle\>>>|<cell|>|<cell|>>|<row|<cell|-
    <around*|\<langle\>|A<rsub|1> B<rsub|1>|\<rangle\>>-<around*|\<langle\>|A<rsub|1>
    \ B<rsub|2>|\<rangle\>>- <around*|\<langle\>|A<rsub|1>
    \ B<rsub|3>|\<rangle\>>>|<cell|>|<cell|>>|<row|<cell|-
    <around*|\<langle\>|A<rsub|3> \ B<rsub|1>|\<rangle\>>+
    <around*|\<langle\>|A<rsub|3> \ B<rsub|2>|\<rangle\>>>|<cell|\<leqslant\>>|<cell|4.>>>>
  </eqnarray>

  <subsection|Proof of the proposition>

  To prove the proposition, we need the following:

  <\lemma>
    Let <math|I> be an inequality which has a symmetric form. Then there is a
    <math|g\<in\>G> such that <math|I<rsup|<around*|[|g,e,e|]>>> is
    symmetric.
  </lemma>

  <\proof>
    \;

    <\itemize-minus>
      <item>let <math|J=I<rsup|<around*|[|g<rsub|1>,g<rsub|2>,\<pi\>|]>>> be
      a symmetric form. Then <math|J=J<rsup|<around*|[|e,e,\<pi\>|]>>=<around*|(|I<rsup|<around*|[|g<rsub|1>,g<rsub|2>,\<pi\>|]>>|)><rsup|<around*|[|e,e,\<pi\>|]>>=I<rsup|<around*|[|g<rsub|2>,g<rsub|1>,e|]>>>
      is also a symmetric form which leads to the second case below.

      <item>let <math|J=I<rsup|<around*|[|g<rsub|1>,g<rsub|2>,e|]>>> be a
      symmetric form. Then <math|J<rprime|'>=J<rsup|<around*|[|g<rsub|2><rsup|-1>,g<rsub|2><rsup|-1>,e|]>>>
      is also a symmetric form, and <math|J<rprime|'>=<around*|(|I<rsup|<around*|[|g<rsub|1>,g<rsub|2>,e|]>>|)><rsup|><rsup|<around*|[|g<rsub|2><rsup|-1>,g<rsub|2><rsup|-1>,e|]>>=I<rsup|<around*|[|g<rsub|1>g<rsub|2><rsup|-1>,e,e|]>>>,
      which proves the lemma.
    </itemize-minus>
  </proof>

  <\lemma>
    <label|Lemma:SymForm>If <math|I> has a symmetric form, then there exists
    a <math|s<rsub|I>\<in\>S<rsub|I>> with
    <math|s<rsub|I>=<around*|[|g<rsup|-1>,g,\<pi\>|]>>.
  </lemma>

  <\proof>
    Let <math|J=I<rsup|<around*|[|g,e,e|]>>> be a symmetric form of <math|I>
    by the previous Lemma. Then:

    <\equation>
      J<rsup|<around*|[|e,e,\<pi\>|]>>=<around*|(|I<rsup|<around*|[|g<rsup|-1>,e,e|]>>|)><rsup|<around*|[|e,e,\<pi\>|]>>=I<rsup|<around*|[|g<rsup|-1>,e,e|]>>=J,
    </equation>

    and <math|<around*|(|I<rsup|<around*|[|g<rsup|-1>,e,\<pi\>|]>>|)><rsup|<around*|[|g,e,e|]>>=<around*|(|I<rsup|<around*|[|g<rsup|-1>,e,e|]>>|)><rsup|<around*|[|g,e,e|]>>>
    which implies <math|I=I<rsup|<around*|[|g<rsup|-1>,g,\<pi\>|]>>>, and
    thus <math|<around*|[|g<rsup|-1>,g,\<pi\>|]>\<in\>S<rsub|I>>.
  </proof>

  Let us now prove the main proposition:

  <\proof>
    If <math|I> can be put into a symmetric form, there exists a
    <math|<around*|[|g<rsup|-1>,g,\<pi\>|]>\<in\>S<rsub|I>> by Lemma
    <reference|Lemma:SymForm>. If indeed, our party-permuting generator is of
    that form, the case is solved.

    If the party-permuting generator is of the general form
    <math|<around*|[|g<rsub|1>,g<rsub|2>\<comma\>\<pi\>|]>> and the
    inequality has a symmetric form, there exists
    <math|<around*|[|j,k,e|]>\<in\>S<rsub|I>> such that
    <math|<around*|[|g<rsub|1>,g<rsub|2>,\<pi\>|]>=<around*|[|g<rsup|-1>,g,\<pi\>|]>*<around*|[|j,k,e|]>=<around*|[|g<rsup|-1>k,g*j,\<pi\>|]>>.
    This can be seen because the subgroup of such <math|<around*|[|j,k,e|]>>
    is normal.

    If there exists such <math|<around*|[|j,k,e|]>>, then
    <math|<around*|[|j,k,e|]>=<around*|[|g<rsup|-1>,g,\<pi\>|]><around*|[|g<rsub|1>,g<rsub|2>,\<pi\>|]>=<around*|[|g<rsup|-1>g<rsub|2>,g
    g<rsub|1>,e|]>>, which proves the proposition.

    If no such element exists, then there is no
    <math|<around*|[|g<rsup|-1>,g\<comma\>\<pi\>|]>\<in\>S<rsub|I>>, and by
    Lemma <reference|Lemma:SymForm>, the inequality does not have a symmetric
    form.

    We do not know of a faster algorithm than brute enumeration of either
    elements <math|g\<in\>G> or <math|<around*|[|j,k,e|]>\<in\>S<rsub|I>>.
    Luckily, most of the time the orders of either <math|G> or
    <math|<around*|\||S<rsub|I>|\|>> are small.

    Note: this factorization is probably related to the Zappa\USzép or
    bicrossed product, or subset product of subgroups.
  </proof>
</body>

<\initial>
  <\collection>
    <associate|language|british>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|Lemma:AtMostOne|<tuple|3|2>>
    <associate|Lemma:SymForm|<tuple|6|4>>
    <associate|Lemma:symform|<tuple|5|?>>
    <associate|Proposition|<tuple|4|2>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-2|<tuple|1|2>>
    <associate|auto-3|<tuple|5|2>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|<rigid|->>|3>>
    <associate|auto-5|<tuple|2|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|1.5fn>|Examples
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>

      <with|par-left|<quote|6fn>|CHSH form given by Ito.
      <with|font|<quote|roman>|\V> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.15fn>>

      <with|par-left|<quote|6fn>|Another inequality by Ito.
      <with|font|<quote|roman>|\V> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.15fn>>

      <with|par-left|<quote|6fn>|The inequality
      <with|mode|<quote|math>|I3322> given by Ito.
      <with|font|<quote|roman>|\V> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.15fn>>

      <with|par-left|<quote|1.5fn>|Proof of the proposition
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>
    </associate>
  </collection>
</auxiliary>