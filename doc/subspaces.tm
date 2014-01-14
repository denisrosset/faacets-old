<TeXmacs|1.0.7.20>

<style|generic>

<\body>
  <doc-data|<doc-title|Canonicalization of Bell inequalities: an
  overview>|<doc-author|<author-data|<author-name|Denis
  Rosset>|<author-email|denis.rosset@unige.ch>>>|<doc-author|<author-data|<author-name|Jean-Daniel
  Bancal>|<\author-email>
    jdbancal.physics@gmail.com
  </author-email>>>|<doc-date|December 22, 2013>>

  <abstract-data|<abstract|We give an overview of our canonicalization scheme
  for Bell inequalities, with sufficient details to define uniquely the
  canonical representative of any linear inequality with rational
  coefficients using finite inputs and outputs. Explicit constructions and
  implementation details are missing.>>

  <section|Canonicalization>

  Linear Bell inequalities are defined on joint probability distributions
  <math|P<around*|(|a b \<ldots\><mid|\|>x y \<ldots\>|)>> using coefficients
  <math|I<around*|(|a b\<ldots\><mid|\|>x
  y\<ldots\>|)>\<in\><with|math-font|Bbb*|R>> and a bound
  <math|u\<in\><with|math-font|Bbb*|R>>

  <\equation>
    <big|sum><rsub|a b \<ldots\>x y\<ldots\>>I<around*|(|a
    b\<ldots\><mid|\|>x y\<ldots\>|)>P<around*|(|a b\<ldots\><mid|\|>x
    y\<ldots\>|)>\<leqslant\>u.
  </equation>

  In the canonicalization procedure, three redundancies in such inequalities
  have to be removed:

  <\itemize-minus>
    <item>the presence of irrelevant terms in an inequality,

    <item>freedom in the definition of the bound, by applying a shift or
    multiplication with a factor,

    <item>the transformation of the inequality under relabellings.
  </itemize-minus>

  The procedure has to constructed such that performing the removal of one of
  the redundancies does not affect the removal of another redundancy: for
  example, transforming the inequality using relabellings should not create
  new irrelevant terms. Thus, the subspace corresponding to irrelevant terms
  has to be symmetric under relabellings. We give below an overview of the
  canonicalization procedure, with the minimal amount of detail to specify it
  in an unique way, while explicit constructions are relagated to the [TODO
  Appendix].

  The three redundancies above can already be described at the single party
  level. Of course, at the single party level, the only facet of the local
  polytope is the <em|positivity>:

  <\equation>
    P<around*|(|a<mid|\|>x|)>\<geqslant\>0,
  </equation>

  for fixed <math|a> and <math|x>. We start below by describing the single
  party case before generalizing it to the multipartite case.

  <subsection|Single party correlations>

  Let us focus first on single party correlations described by the
  conditional probability distribution <math|P<around*|(|a<mid|\|>x|)>>,
  where <math|x=1,2,\<ldots\>,X> is the input or measurement setting, and
  <math|a=1,2,\<ldots\>,A<rsub|x>> represents the output or measurement
  outcome. The number of outputs for the <math|x>-th input is written
  <math|A<rsub|x>>, and we impose each input to have at least two outcomes:
  <math|A<rsub|x>\<geqslant\>2>. The tuple
  <math|<around*|(|A<rsub|1>,\<ldots\>,A<rsub|X>|)>> is called the <em|input
  structure> of the party. When <math|A<rsub|1>=A<rsub|2>=\<ldots\>=A<rsub|X>>,
  we say that the input structure is <em|homogenous>.

  Correlations can be transformed by changing the label of inputs or outputs.
  Such transformations are called <em|relabellings> and form a finite group
  <math|H>. Relabellings can be composed and form a finite group <math|H>,
  composed of

  <\itemize-minus>
    <item>relabellings of outputs, corresponding to the subgroup
    <math|\<cal-A\>\<subseteq\>H>,

    <item>relabellings of inputs, corresponding to the subgroup
    <math|\<cal-X\>\<subset\>H>.
  </itemize-minus>

  These groups are formally defined [IN APPENDIX]. For our purposes here, we
  only need to warn the reader that elements of <math|\<cal-X\>> are
  restricted to those that do not change the <em|input structure>
  <math|A<rsub|x>>, thus the shape of <math|P<around*|(|a<mid|\|>x|)>>. We
  also note that the relabelling of outputs can be done differently for every
  single input.

  <subsubsection|Correlation vectors and correlation spaces>

  We define the <em|correlation vector> <math|<wide|P|\<vect\>>\<in\>\<cal-P\>=<with|math-font|Bbb*|R><rsup|d>>
  corresponding to the probability distribution
  <math|P<around*|(|a<mid|\|>x|)>> by enumerating the indices
  <math|<around*|(|a,x|)>>. As every coefficient
  <math|P<around*|(|a<mid|\|>x|)>> is enumerated
  <math|d=<big|sum><rsub|x>A<rsub|x>>. Correlations are not fully dimensional
  in <math|\<cal-P\>>; indeed, distributions <math|P<around*|(|a<mid|\|>x|)>>
  are normalized:

  <\equation>
    <label|Eq:Pnormalized>\<forall\>x,<space|2em>\<Sigma\><around*|(|x|)>\<equiv\><big|sum><rsub|a=1><rsup|A<rsub|x>>P<around*|(|a<mid|\|>x|)>=1.
  </equation>

  Let <math|\<cal-P\><rsub|<text|proper>>> be the smallest subspace of
  <math|\<cal-P\>> containing all correlation vectors corresponding to
  probability distributions. The subspace
  <math|\<cal-P\><rsub|<text|proper>>> is be characterized by <math|X-1>
  independent equations:

  <\equation>
    <label|Eq:ProperConstraints>\<Sigma\><around*|(|x|)>-\<Sigma\><around*|(|x+1|)>=0<space|2em><text|for
    >x=1,2,\<ldots\>,X-1,
  </equation>

  and has dimension <math|d<rsub|<text|proper>>=d-X+1>.

  The finite group <math|H> has a permutation representation on distributions
  <math|P<around*|(|a<mid|\|>x|)>> and thus on correlation vectors
  <math|<wide|P|\<vect\>>> (a construction is given in the [TODO Appendix]).
  In the subspace <math|\<cal-P\><rsub|<text|proper>>>, we single out
  the<\footnote>
    The maximal subspace invariant under <math|H> has dimension <math|1> only
    when the input structure is homogenous. For the non-homogenous case, we
    define a unidimensional <math|\<cal-P\><rsub|<with|math-font|Bbb*|1>>> by
    analogy.
  </footnote> subspace <math|\<cal-P\><rsub|<with|math-font|Bbb*|1>>>
  invariant under relabellings, corresponding to the span of the uniformly
  random probability distribution <math|<wide|P|\<vect\>><rsub|<with|math-font|Bbb*|1>>>:

  <\equation>
    P<rsub|<with|math-font|Bbb*|1>><around*|(|a<mid|\|>x|)>=<frac|1|A<rsub|x>>.
  </equation>

  Using the subspace structure <math|\<cal-P\><rsub|<with|math-font|Bbb*|1>>\<subset\>\<cal-P\><rsub|<text|proper>>\<subseteq\>\<cal-P\>>,
  we want to identify spaces <math|\<cal-P\><rsub|<text|correlations>>> and
  <math|\<cal-P\><rsub|<text|improper>>> so that the following decomposition:

  <\equation>
    \<cal-P\>=\<cal-P\><rsub|<text|proper>>\<oplus\>\<cal-P\><rsub|<text|improper>>=<around*|(|\<cal-P\><rsub|<with|math-font|Bbb*|1>>\<oplus\>\<cal-P\><rsub|<text|correlations>>|)>\<oplus\>\<cal-P\><rsub|<text|improper>>,
  </equation>

  can be used to write any correlation vector <math|<wide|P|\<vect\>>> in
  orthogonal components:

  <\equation>
    <wide|P|\<vect\>>=\<omega\><rsub|<with|math-font|Bbb*|1>><wide|P|\<vect\>><rsub|<with|math-font|Bbb*|1>>\<oplus\><wide|P|\<vect\>><rsub|<text|correlations>>\<oplus\><wide|P|\<vect\>><rsub|<text|improper>>,<space|2em><wide|P|\<vect\>><rsub|<text|correlations>>\<in\>\<cal-P\><rsub|<text|correlations>>,<space|1em><wide|P|\<vect\>><rsub|<text|improper>>\<in\>\<cal-P\><rsub|<text|improper>>.
  </equation>

  Orthogonality requires a well-defined inner product between correlation
  vectors <math|<around*|(|<wide|P|\<vect\>><rsub|1>,<wide|P|\<vect\>><rsub|2>|)>>;
  but such a definition does not make physical sense. Instead, we have to
  work with dual space <math|\<cal-I\>\<equiv\>\<cal-P\><rsup|\<ast\>>>
  composed of linear functionals <math|I:\<cal-P\>\<longrightarrow\><with|math-font|Bbb*|R>>.

  <subsubsection|Linear functionals and Bell inequalities>

  Linear functionals on <math|\<cal-P\>>, associated with a bound <math|u>,
  define linear inequalities on correlations:

  <\equation>
    I<around*|(|P|)>\<leqslant\>u,
  </equation>

  which are readily identifed with linear Bell inequalities:

  <\equation>
    <big|sum><rsub|x=1><rsup|X><big|sum><rsub|a=1><rsup|A<rsub|x>>I<around*|(|a<mid|\|>x|)>P<around*|(|a<mid|\|>x|)>\<leqslant\>u.
  </equation>

  Now, <math|\<cal-P\><rsup|\<ast\>>> is isomorphic to
  <math|<with|math-font|Bbb*|R><rsup|d>>, and thus <math|I> can be written as
  a vector <math|<wide|I|\<vect\>>\<in\><with|math-font|Bbb*|R><rsup|d>>. The
  value <math|I<around*|(|P|)>> is then obtained by the canonical inner
  product in <math|<with|math-font|Bbb*|R><rsup|d>>:

  <\equation>
    I<around*|(|P|)>=<around*|(|<wide|I|\<vect\>>,<wide|P|\<vect\>>|)>.
  </equation>

  We warn the reader not to be misled by the fact that
  <math|\<cal-P\>=<with|math-font|Bbb*|R><rsup|d>> and
  <math|\<cal-I\>=<with|math-font|Bbb*|R><rsup|d>>; as said earlier, the
  products between two correlation vectors
  <math|<around*|(|<wide|P|\<vect\>><rsub|1>,<wide|P|\<vect\>><rsub|2>|)>> or
  between two linear functionals <math|<around*|(|<wide|I|\<vect\>><rsub|1>,<wide|I|\<vect\>><rsub|2>|)>>
  do not make sense.

  We single out two subspaces of <math|\<cal-I\>>:

  <\itemize-minus>
    <item>the space <math|\<cal-I\><rsub|<text|improper>>> which is the span
    of the functionals <eqref|Eq:ProperConstraints> taking value <math|0> on
    <math|\<cal-P\><rsub|<text|proper>>> (e.g. the annihilator of
    <math|\<cal-P\><rsub|<text|proper>>>),

    <item>the unidimensional space <math|\<cal-I\><rsub|<with|math-font|Bbb*|1>>>
    symmetric under <math|H>, whose basis consists of
    <math|<around*|{|<wide|I|\<vect\>><rsub|<with|math-font|Bbb*|1>>|}>>, the
    <em|average normalization> functional:

    <\equation>
      I<rsub|<with|math-font|Bbb*|1>><around*|(|P|)>=<frac|1|X><big|sum><rsub|x=1><rsup|X><big|sum><rsub|a=1><rsup|A<rsub|x>>P<around*|(|a<mid|\|>x|)>.
    </equation>
  </itemize-minus>

  With these tools, we want the following decomposition:

  <\equation>
    \<cal-P\>=\<cal-P\><rsub|<with|math-font|Bbb*|1>>\<oplus\>\<cal-P\><rsub|<text|correlations>>\<oplus\>\<cal-P\><rsub|<text|improper>>,<space|2em>\<cal-I\>=\<cal-I\><rsub|<with|math-font|Bbb*|1>>\<oplus\>\<cal-I\><rsub|<text|correlations>>\<oplus\><with|math-font|cal|I><rsub|<text|improper>>,
  </equation>

  with dimension <math|d<rsub|<with|math-font|Bbb*|1>>=1>,
  <math|d<rsub|<with|math-font|Bbb*|correlations>>=d-X>,
  <math|d<rsub|<text|improper>>=X-1>, such that elements of different
  subspaces <math|s\<neq\>s<rprime|'>\<in\><around*|{|<with|math-font|Bbb*|1>,<text|correlations>,<text|improper>|}>>
  are biorthogonal:

  <\equation>
    \<forall\><wide|I|\<vect\>><rsub|s>\<in\>\<cal-I\><rsub|s>,<wide|P|\<vect\>><rsub|s<rprime|'>>\<in\>\<cal-P\><rsub|s<rprime|'>>,<space|2em><around*|(|<wide|P|\<vect\>><rsub|s>,<wide|I|\<vect\>><rsub|s<rprime|'>>|)>=0.
  </equation>

  For this decomposition to be unique, we impose the restrictions:

  <\description-dash>
    <item*|>the subspaces <math|\<cal-P\><rsub|<text|improper>>> and
    <math|\<cal-I\><rsub|<text|correlations>>> are invariant under <math|H>,

    <item*|>each element <math|<wide|P|\<vect\>><rsub|<text|improper>>\<in\>\<cal-P\><rsub|<text|improper>>>
    is invariant under relabelling of outputs.
  </description-dash>

  Given this decomposition, any correlation vector can written as
  <math|<wide|P|\<vect\>>=\<omega\><rsub|<with|math-font|Bbb*|1>>*<wide|P|\<vect\>><rsub|<with|math-font|Bbb*|1>>+<wide|P|\<vect\>><rsub|<text|correlations>>+<wide|P|\<vect\>><rsub|<text|improper>>>,
  with <math|\<omega\><rsub|<with|math-font|Bbb*|1>>\<in\><with|math-font|Bbb*|R>>,
  <math|<wide|P|\<vect\>><rsub|<text|correlations>>\<in\>\<cal-P\><rsub|<text|correlations>>>
  and <math|<wide|P|\<vect\>><rsub|<text|improper>>\<in\>\<cal-P\><rsub|<text|improper>>>.
  For vectors <math|<wide|P|\<vect\>>> corresponding to probability
  distributions <math|P<around*|(|a<mid|\|>x|)>>,
  <math|\<omega\><rsub|<with|math-font|Bbb*|1>>=<around*|(|I<rsub|<with|math-font|Bbb*|1>>,<wide|P|\<vect\>>|)>=1>
  and <math|<wide|P|\<vect\>><rsub|<text|improper>>=0>. Thus, probability
  distributions are fully specified by <math|<wide|P|\<vect\>><rsub|<text|correlations>>>.

  Any linear Bell inequality can be decomposed as
  <math|<wide|I|\<vect\>>=\<nu\><rsub|1><wide|I|\<vect\>><rsub|<with|math-font|Bbb*|1>>+<wide|I|\<vect\>><rsub|<text|correlations>>+<wide|I|\<vect\>><rsub|<text|improper>>>.
  The value of <math|I<around*|(|P|)>> on probability distributions <math|P>
  is:

  <\eqnarray>
    <tformat|<table|<row|<cell|I<around*|(|P|)>>|<cell|=>|<cell|<around*|(|\<nu\><rsub|1><wide|I|\<vect\>><rsub|<with|math-font|Bbb*|1>>,\<omega\><rsub|<with|math-font|Bbb*|1>><wide|P|\<vect\>><rsub|<with|math-font|Bbb*|1>>|)>+<around*|(|<wide|I|\<vect\>><rsub|<text|correlations>>,<wide|P|\<vect\>><rsub|<text|correlations>>|)>+<around*|(|<wide|I|\<vect\>><rsub|<text|improper>>,0|)>>>|<row|<cell|>|<cell|=>|<cell|\<nu\><rsub|1>+<around*|(|<wide|I|\<vect\>><rsub|<text|correlations>>,<wide|P|\<vect\>><rsub|<text|correlations>>|)>.>>>>
  </eqnarray>

  Redundancies in an inequality <math|I<around*|(|P|)>\<leqslant\>u> can then
  be removed by transforming:

  <\equation>
    <label|Eq:FullInequality><around*|(|\<nu\><rsub|1><wide|I|\<vect\>><rsub|<with|math-font|Bbb*|1>>+<wide|I|\<vect\>><rsub|<text|correlations>>+<wide|I|\<vect\>><rsub|<text|improper>>,<wide|P|\<vect\>>|)>\<leqslant\>u,
  </equation>

  into

  <\equation>
    <label|Eq:ReducedInequality><around*|(|<wide|I|\<vect\>><rsub|<text|correlations>>,<wide|P|\<vect\>>|)>\<leqslant\>u-\<nu\><rsub|1>.
  </equation>

  Thus, any linear Bell inequality can be described by a vector
  <math|<wide|I|\<vect\>><rsub|<text|correlations>>\<in\>\<cal-I\><rsub|<text|correlations>>>
  in a space of dimension <math|d<rsub|<text|correlations>>=d-X> and a bound
  <math|u<rprime|'>=u-\<nu\><rsub|1>\<in\><with|math-font|Bbb*|R>>.

  <subsubsection|Bases and notations>

  Both probability distributions and linear Bell inequalities can be
  described by the coefficients of their vectors <math|<wide|P|\<vect\>>> and
  <math|<wide|I|\<vect\>>>; as they can be restricted to the subspaces
  <math|\<cal-P\><rsub|<text|correlations>>>,
  <math|\<cal-I\><rsub|<text|correlations>>>, two notations have been used in
  the litterature:

  <\description-dash>
    <item*|>a notation using <em|correlators> for binary outputs [TODO: cite
    Pitowsky, Sliwa, and before?],

    <item*|>a notation which omits the coefficients for the last output
    <math|a=A<rsub|x>>, as these coefficients can always be recovered using
    the normalization [TODO: cite Collins-Gisin].
  </description-dash>

  These notations correspond to different bases of
  <math|\<cal-P\><rsub|<text|correlations>>> and
  <math|\<cal-I\><rsub|<text|correlations>>>, constructed explicitly in the
  [TODO: Appendix].

  <subsection|Multipartite correlations>

  To develop the multipartite canonicalization scheme, we consider the
  bipartite joint probability distribution <math|P<around*|(|a b<mid|\|>x
  y|)>>. The input structure is described by <math|A<rsub|x>\<geqslant\>2>
  and <math|B<rsub|y>\<geqslant\>2> for <math|x=1,\<ldots\>,X> and
  <math|y=1,\<ldots\>,Y>.

  Considering the single party marginals <math|P<rsup|<text|A>><around*|(|a<mid|\|>x|)>>
  and <math|P<rsup|<text|B>><around*|(|b<mid|\|>y|)>> and the associated
  vector spaces <math|\<cal-P\><rsup|<text|A>>> and
  <math|\<cal-P\><rsup|<text|B>>>, the correlation vector
  <math|<wide|P|\<vect\>>> associated to <math|P<around*|(|a b<mid|\|>x y|)>>
  is an element of the tensor space <math|\<cal-P\>=\<cal-P\><rsup|<text|A>>\<otimes\>\<cal-P\><rsup|<text|B>>>.
  Linear inequalities are associated with elements of the dual space
  <math|\<cal-I\>=\<cal-P\><rsup|\<ast\>>=\<cal-I\><rsup|<text|A>>\<otimes\>\<cal-I\><rsup|<text|B>>>.

  We write below a decomposition of <math|\<cal-P\>> and <math|\<cal-I\>>:

  <\equation>
    \<cal-P\>=\<cal-P\><rsub|<with|math-font|Bbb*|1>>\<oplus\>\<cal-P\><rsub|<text|correlations>>\<oplus\>\<cal-P\><rsub|<text|improper>>,<space|2em>\<cal-I\>=\<cal-I\><rsub|<with|math-font|Bbb*|1>>\<oplus\>\<cal-I\><rsub|<text|correlations>>\<oplus\><with|math-font|cal|I><rsub|<text|improper>>,
  </equation>

  such that <math|P<rsub|<with|math-font|Bbb*|1>><around*|(|a b<mid|\|>x
  y|)>=<frac|1|A<rsub|x>B<rsub|y>>>, <math|I<rsub|<with|math-font|Bbb*|1>><around*|(|a
  b<mid|\|>x y|)>=<frac|1|X Y Z>>, and <math|\<cal-P\><rsub|<with|math-font|Bbb*|1>>\<oplus\>\<cal-P\><rsub|<text|correlations>>>
  is the minimal subspace of <math|\<cal-P\>> containing all correlation
  vectors corresponding to probability distributions <math|P<around*|(|a
  b<mid|\|>x y|)>>.

  Because <math|\<cal-P\>=\<cal-P\><rsup|<text|A>>\<otimes\>\<cal-P\><rsup|<text|B>>>,
  we have:

  <\equation>
    \<cal-P\>=<around*|(|\<cal-P\><rsub|<with|math-font|Bbb*|1>><rsup|<text|A>>\<oplus\>\<cal-P\><rsup|<text|A>><rsub|<text|correlations>>\<oplus\>\<cal-P\><rsup|<text|A>><rsub|<text|improper>>|)>\<otimes\><around*|(|\<cal-P\><rsub|<with|math-font|Bbb*|1>><rsup|<text|B>>\<oplus\>\<cal-P\><rsup|<text|B>><rsub|<text|correlations>>\<oplus\>\<cal-P\><rsup|<text|B>><rsub|<text|improper>>|)>.
  </equation>

  <\em>
    Note: the reader should think that bases can be constructed for all
    single party subspaces \ [ref TODO: Appendix]. A basis for the subspace
    <math|\<cal-P\><rsup|<text|A>><rsub|s>\<otimes\>\<cal-P\><rsup|<text|B>><rsub|s<rprime|'>>>
    is given by taking tensor products of all pairs of basis elements for
    <math|\<cal-P\><rsup|<text|A>><rsub|s>> and
    <math|\<cal-P\><rsup|<text|B>><rsub|s<rprime|'>>>.
  </em>

  The terms in the expanded tensor product are interpreted as follows:

  <big-table|<block|<tformat|<cwith|1|-1|4|4|cell-block|yes>|<cwith|1|-1|4|4|cell-hyphen|t>|<cwith|3|3|1|1|cell-row-span|3>|<cwith|6|6|1|1|cell-row-span|2>|<cwith|8|8|1|1|cell-row-span|23>|<table|<row|<cell|Combined>|<cell|Subspace>|<cell|Notation>|<\cell>
    Interpretation
  </cell>>|<row|<cell|<math|\<cal-P\><rsub|<with|math-font|Bbb*|1>>>>|<cell|<math|\<cal-P\><rsub|<with|math-font|Bbb*|1>><rsup|<text|A>>\<otimes\>\<cal-P\><rsub|<with|math-font|Bbb*|1>><rsup|<text|B>>>>|<cell|<math|\<cal-P\><rsub|<with|math-font|Bbb*|1>>>>|<\cell>
    distribution with uniformly random outputs
  </cell>>|<row|<cell|<math|\<cal-P\><rsub|<text|correlations>>>>|<cell|<math|\<cal-P\><rsup|<text|A>><rsub|<text|correlations>>\<otimes\>\<cal-P\><rsub|<with|math-font|Bbb*|1>><rsup|<text|B>>>>|<cell|<math|\<cal-P\><rsub|<text|correlations:A>>>>|<\cell>
    correlations of Alice marginal distribution
  </cell>>|<row|<cell|>|<cell|<math|\<cal-P\><rsub|<with|math-font|Bbb*|1>><rsup|<text|A>>\<otimes\>\<cal-P\><rsup|<text|B>><rsub|<text|correlations>>>>|<cell|<math|\<cal-P\><rsub|<text|correlations:B>>>>|<\cell>
    correlations of Bob marginal distribution
  </cell>>|<row|<cell|>|<cell|<math|\<cal-P\><rsup|<text|A>><rsub|<text|correlations>>\<otimes\>\<cal-P\><rsup|<text|B>><rsub|<text|correlations>>>>|<cell|<math|\<cal-P\><rsub|<text|correlations:AB>>>>|<\cell>
    fully bipartite correlations
  </cell>>|<row|<cell|<math|\<cal-P\><rsub|<text|signaling>>>>|<cell|<math|\<cal-P\><rsup|<text|A>><rsub|<text|improper>>\<otimes\>\<cal-P\><rsup|<text|B>><rsub|<text|correlations>>>>|<cell|<math|\<cal-P\><rsub|<text|A>\<rightarrow\><text|B>>>>|<\cell>
    Alice<math|\<rightarrow\>>Bob signaling correlations
  </cell>>|<row|<cell|>|<cell|<math|\<cal-P\><rsup|<text|A>><rsub|<text|correlations>>\<otimes\>\<cal-P\><rsup|<text|B>><rsub|<text|improper>>>>|<cell|<math|\<cal-P\><rsub|<text|B>\<rightarrow\><text|A>>>>|<\cell>
    Bob<math|\<rightarrow\>>Alice signaling correlations
  </cell>>|<row|<cell|<math|\<cal-P\><rsub|<text|norm>>>>|<cell|<math|\<cal-P\><rsup|<text|A>><rsub|<text|improper>>\<otimes\>\<cal-P\><rsup|<text|B>><rsub|<with|math-font|Bbb*|1>>>>|<cell|<math|\<cal-P\><rsub|<text|norm:A>>>>|<\cell>
    improperly normalized marginals for Alice
  </cell>>|<row|<cell|>|<cell|<math|\<cal-P\><rsup|<text|A>><rsub|<with|math-font|Bbb*|1>>\<otimes\>\<cal-P\><rsup|<text|B>><rsub|<text|improper>>>>|<cell|<math|\<cal-P\><rsub|<text|norm:B>>>>|<\cell>
    improperly normalized marginals for Bob
  </cell>>|<row|<cell|>|<cell|<math|\<cal-P\><rsup|<text|A>><rsub|<text|improper>>\<otimes\>\<cal-P\><rsup|<text|B>><rsub|<text|improper>>>>|<cell|<math|\<cal-P\><rsub|<text|norm:AB>>>>|<\cell>
    improperly normalized distributions\ 

    with properly normalized marginals
  </cell>>>>>|Decomposition of the bipartite space
  <math|\<cal-P\>=\<cal-P\><rsup|<text|A>>\<otimes\>\<cal-P\><rsup|<text|B>>>
  into <math|9=1+3+2+3> subspaces. See [TODO Appendix] for the motivation of
  the interpretation.>

  We identify <math|\<cal-P\><rsub|<text|improper>>=\<cal-P\><rsub|<text|signaling>>\<oplus\>\<cal-P\><rsub|<text|norm>>>,
  as correlations obtained by performing space-like separated measurements
  are non-signaling. The same decomposition is done on <math|\<cal-I\>>, and
  thus the procedure of Eqs. <eqref|Eq:FullInequality> and
  <eqref|Eq:ReducedInequality> can be applied to any bipartite linear Bell
  inequality.

  For general multipartite scenarios, a similar decomposition is performed,
  with the following interpretation:

  <\description-dash>
    <item*|>the tensor product <math|\<cal-P\><rsub|<with|math-font|Bbb*|1>><rsup|<text|A>>\<otimes\>\<cal-P\><rsub|<with|math-font|Bbb*|1>><rsup|<text|B>>\<otimes\>\<cal-P\><rsub|<with|math-font|Bbb*|1>><rsup|<text|C>>\<otimes\>\<ldots\>>
    is identified with <math|\<cal-P\><rsub|<with|math-font|Bbb*|1>>>,

    <item*|>products containing at least one
    <math|\<cal-P\><rsup|<text|A,B,C,>\<ldots\>><rsub|<text|correlations>>>
    and possibly some <math|\<cal-P\><rsup|<text|A,B,C,>\<ldots\>><rsub|<with|math-font|Bbb*|1>>>
    are collected in <math|\<cal-P\><rsub|<text|correlations>>>,

    <item*|>products containing at least one
    <math|\<cal-P\><rsup|<text|A,B,C,>\<ldots\>><rsub|<text|improper>>> and
    possibly some <math|\<cal-P\><rsup|<text|A,B,C,>\<ldots\>><rsub|<with|math-font|Bbb*|1>>>
    are collected in <math|\<cal-P\><rsub|<text|norm>>>,

    <item*|>products containing at least one
    <math|\<cal-P\><rsup|<text|A,B,C,>\<ldots\>><rsub|<text|correlations>>>
    and at least one <math|\<cal-P\><rsup|<text|A,B,C,>\<ldots\>><rsub|<text|improper>>>
    are collected in <math|\<cal-P\><rsub|<text|signaling>>> (the indices of
    the correlations and improper terms will indicate the direction of
    signaling).
  </description-dash>

  <subsection|Canonicalization of Bell inequalities>

  With this construction, we perform the canonicalization of an inequality
  using these steps:

  <\itemize-minus>
    <item>we transform any lower bound to an upper bound:

    <\equation>
      <around*|(|<wide|I|\<vect\>>,<wide|P|\<vect\>>|)>\<geqslant\>l<space|2em>\<longrightarrow\><space|2em><around*|(|-<wide|I|\<vect\>>,<wide|P|\<vect\>>|)>\<leqslant\>-l,
    </equation>

    <item>we decompose the inequality, remove the irrelevant part and shift
    the bound:

    <\equation>
      <around*|(|\<nu\><rsub|1><wide|I|\<vect\>><rsub|<with|math-font|Bbb*|1>>+<wide|I|\<vect\>><rsub|<text|correlations>>+<wide|I|\<vect\>><rsub|<text|improper>>,<wide|P|\<vect\>>|)>\<leqslant\>u<space|2em>\<longrightarrow\><space|2em><around*|(|<wide|I|\<vect\>><rsub|<text|correlations>>,<wide|P|\<vect\>>|)>\<leqslant\>u-\<nu\><rsub|1>,
    </equation>

    <item>if <math|<wide|I|\<vect\>>> has rational coefficients, we multiply
    <math|<wide|I|\<vect\>>> by a factor such that the resulting vector has
    integer coefficients with greatest common divisor 1,

    <item>we enumerate all representatives of <math|<wide|I|\<vect\>>> under
    relabellings and pick the minimal representative under lexicographic
    ordering.
  </itemize-minus>

  This procedure removes the three redundancies explained above. The only
  arbitrary part in the definition of this procedure is the selection of the
  minimal lexicographic representative, which we make explicit below.

  Let <math|f:k\<mapsto\><around*|(|a,x,b,y,\<ldots\>|)>> be an enumeration
  of the indices <math|<around*|(|a,x,b,y,\<ldots\>|)>>, for
  <math|k=1,\<ldots\>,d>. The lexicographic ordering is such that:

  <\equation>
    <wide|I|\<vect\>>\<less\><rsub|<text|lex>><wide|J|\<vect\>><space|1em>\<Leftrightarrow\><space|1em>\<exists\>\<ell\><text|
    s.t. >I<rsub|f<around*|(|k|)>>=J<rsub|f<around*|(|k|)>><text| for
    >k\<less\>\<ell\><text| and >I<rsub|f<around*|(|\<ell\>|)>>\<less\>J<rsub|f<around*|(|\<ell\>|)>>.
  </equation>

  We now define our enumeration <math|f>. Let
  <math|f<rsup|<text|A>>:k<rsup|<text|A>>\<mapsto\><around*|(|a,x|)>>,
  <math|f<rsup|<text|B>>:k<rsup|<text|B>>\<mapsto\><around*|(|b,y|)>>, ... be
  enumerations for the single party marginals
  <math|<wide|P|\<vect\>><rsup|<text|A>>\<in\><with|math-font|Bbb*|R><rsup|d<rsup|<text|A>>>>,
  <math|<wide|P|\<vect\>><rsup|<text|B>>\<in\><with|math-font|Bbb*|R><rsup|d<rsup|<text|B>>>>,
  .... To define <math|f>, we decompose the index <math|k> as:

  <\equation>
    k=k<rsup|<text|A>>+d<rsup|<text|A>><around*|(|k<rsup|<text|B>>-1|)>+d<rsup|<text|A>>d<rsup|<text|B>><around*|(|k<rsup|<text|C>>-1|)>+\<ldots\>,
  </equation>

  and attribute <math|<around*|(|a,x|)>=f<rsup|<text|A>><around*|(|k<rsup|<text|A>>|)>>,
  <math|<around*|(|b,y|)>=f<rsup|<text|B>><around*|(|k<rsup|<text|B>>|)>>.

  We define now the single party enumeration <math|f<rsup|<text|A>>>,
  <math|f<rsup|<text|B>>>, ... such that (here for <math|f<rsup|<text|A>>>):

  <\itemize-minus>
    <item>for each input <math|x>, outputs <math|a=1,2,\<ldots\>,A<rsub|x>>
    are contiguous and enumerated in increasing order,

    <item>inputs are then enumerated in increasing order.
  </itemize-minus>

  <appendix|Appendix: relabellings (incomplete)>

  <subsubsection|Relabellings>

  Two types of relabellings can be applied to single party marginals
  <math|P<around*|(|a<mid|\|>x|)>>:

  <\itemize-minus>
    <item>relabelling of outputs <math|h<rsub|<text|out>>>, described by
    index <math|\<xi\>=1,\<ldots\>,X> and a permutation <math|\<pi\>>, such
    that:

    <\equation>
      a<rprime|'>=a<rsup|h<rsub|<text|out>>>=<choice|<tformat|<cwith|2|2|2|2|cell-hyphen|n>|<cwith|2|2|2|2|cell-col-span|2>|<table|<row|<cell|a<rsup|\<pi\>>>|<cell|<text|if>>|<cell|x=\<xi\>,>>|<row|<cell|a>|<cell|<text|otherwise>.>|<cell|>>>>>
    </equation>

    <item>relabelling of inputs <math|h<rsub|<text|in>>>, described by a
    permutation <math|\<sigma\>> preserving the structure of outcomes
    (<math|A<rsub|\<sigma\><around*|(|x|)>>=A<rsub|x>>), such that
    <math|x<rprime|'>=x<rsup|h<rsub|<text|in>>>=x<rsup|\<sigma\>>>.
  </itemize-minus>

  The action of a relabelling <math|h> on <math|P<around*|(|a<mid|\|>x|)>> is
  such that <math|P<rprime|'>=P<rsup|h>> has coefficients
  <math|P<rprime|'><around*|(|a<rprime|'><mid|\|>x<rprime|'>|)>=P<around*|(|a<mid|\|>x|)>>:

  <\equation>
    P<rsup|h<rsub|<text|out>>><around*|(|a<mid|\|>x|)>=<choice|<tformat|<table|<row|<cell|P<around*|(|a<rsup|\<pi\><rsup|-1>><mid|\|>x|)>>|<cell|<text|if
    >x=\<xi\>,>>|<row|<cell|P<around*|(|a<mid|\|>x|)>>|<cell|<text|otherwise>,>>>>><space|2em>P<rsup|h<rsub|<text|in>>><around*|(|a<mid|\|>x|)>=P<around*|(|a<mid|\|>x<rsup|\<sigma\><rsup|-1>>|)>.
  </equation>

  We write <math|<text|id>> the identity relabelling which leaves <math|P>
  invariant: <math|P<rsup|<text|id>>=P>.

  <subsubsection|Group of output relabellings>

  We write <math|\<cal-A\><rsub|x>> be the group of all output relabellings
  for the <math|x>-th input, with identity <math|<text|id>> and the
  composition as product. We define the action of the product
  <math|\<alpha\>=\<alpha\><rsub|1>\<alpha\><rsub|2>> on <math|P> by the
  <em|right action>: <math|P<rsup|\<alpha\>>=<around*|(|P<rsup|\<alpha\><rsub|1>>|)><rsup|\<alpha\><rsub|2>>>.
  Using the same exponential notation, we write the action of a permutation
  <math|\<pi\>> on <math|a> as <math|a<rsup|\<pi\>>> with
  <math|a<rsup|\<pi\><rsub|1>\<pi\><rsub|2>>=<around*|(|a<rsup|\<pi\><rsub|1>>|)><rsup|\<pi\><rsub|2>>>.

  Let us consider the group of relabellings of outputs for a fixed input
  <math|\<xi\>>. This group can be identified with the symmetric group acting
  on <math|A<rsub|\<xi\>>> elements <math|S<rsub|A<rsub|\<xi\>>>>.\ 

  Take <math|\<alpha\><rsub|1>,\<alpha\><rsub|2>\<in\>\<cal-A\><rsub|\<xi\>>>,
  with corresponding permutations <math|\<pi\><rsub|1>,\<pi\><rsub|2>\<in\>S<rsub|A<rsub|\<xi\>>>>.
  \ Then:

  <\equation>
    <around*|(|P<rsup|\<alpha\><rsub|1>>|)><rsup|\<alpha\><rsub|2>><around*|(|a<mid|\|>\<xi\>|)>=P<rsup|\<alpha\><rsub|1>><around*|(|a<rsup|\<pi\><rsub|2><rsup|-1>><mid|\|>\<xi\>|)>=P<around*|(|a<rsup|\<pi\><rsub|2><rsup|-1>\<pi\><rsub|1><rsup|-1>><mid|\|>\<xi\>|)>=P<around*|(|a<rsup|\<pi\><rsup|-1>><mid|\|>\<xi\>|)>=P<rsup|\<alpha\>><around*|(|a<mid|\|>x|)>
  </equation>

  and <math|\<alpha\>> has corresponding permutation
  <math|\<pi\>=<around*|(|\<pi\><rsub|2><rsup|-1>\<pi\><rsub|1><rsup|-1>|)>=\<pi\><rsub|1>\<pi\><rsub|2>>.

  Let us now consider the group <math|\<cal-A\>> of all output relabellings,
  composed of products of elements of its subgroups
  <math|<around*|{|\<cal-A\><rsub|x>|}><rsub|x=1><rsup|X>>. When
  <math|\<alpha\><rsub|1>\<in\>\<cal-A\><rsub|\<xi\>>> and
  <math|\<alpha\><rsub|2>\<in\>\<cal-A\><rsub|\<xi\><rprime|'>>> for
  <math|\<xi\>=\<xi\><rprime|'>>, they act on different parts of
  <math|P<around*|(|a<mid|\|>x|)>> and thus commute:
  <math|\<alpha\><rsub|1>\<alpha\><rsub|2>=\<alpha\><rsub|2>\<alpha\><rsub|1>>.
  Then, any element of <math|\<alpha\>\<in\>\<cal-A\>> can be decomposed as:

  <\equation>
    \<alpha\>=\<alpha\><rsup|1>\<alpha\><rsup|2>\<ldots\>\<alpha\><rsup|X>,<space|2em>\<alpha\><rsup|x>\<in\>\<cal-A\><rsub|x>,
  </equation>

  and <math|\<cal-A\>> is the direct product
  <math|\<cal-A\>=\<cal-A\><rsub|1>\<times\>\<cal-A\><rsub|2>\<times\>\<ldots\>\<times\>\<cal-A\><rsub|X>>.

  <subsubsection|Group of input relabellings>

  We write <math|\<cal-X\>> for the group of input relabellings. We identify
  the elements of <math|\<cal-X\>> with permutations <math|\<sigma\>> acting
  on <math|X> elements, and identify <math|\<cal-X\>> with the subgroup of
  <math|S<rsub|X>> that leaves the number of outputs <math|A<rsub|x>>
  invariant. Let us verify that the product of
  <math|\<sigma\>=\<sigma\><rsub|1>\<sigma\><rsub|2>> is the usual product of
  permutations:

  <\equation>
    <around*|(|P<rsup|\<sigma\><rsub|1>>|)><rsup|\<sigma\><rsub|2>><around*|(|a<mid|\|>x|)>=P<rsup|\<sigma\><rsub|1>><around*|(|a<mid|\|>x<rsup|\<sigma\><rsub|2><rsup|-1>>|)>=P<around*|(|a<mid|\|>x<rsup|\<sigma\><rsub|2><rsup|-1>\<sigma\><rsub|1><rsup|-1>>|)>=P<around*|(|a<mid|\|>x<rsup|\<sigma\><rsup|-1>>|)>=P<rsup|\<sigma\>><around*|(|a<mid|\|>x|)>.
  </equation>

  <subsubsection|Group of relabellings>

  Let <math|H> be the group of input and outputs relabellings. We have to see
  if a product <math|h=\<sigma\>*\<alpha\>=\<sigma\>*\<alpha\><rsup|1>\<ldots\>\<alpha\><rsup|X>>
  can be reordered into <math|h=\<beta\>*\<tau\>=\<beta\><rsup|1>\<ldots\>\<beta\><rsup|X>\<tau\>>.
  We have:

  <\equation>
    <around*|(|P<rsup|\<sigma\>>|)><rsup|\<alpha\>><around*|(|a<mid|\|>x|)>=P<rsup|\<sigma\>><around*|(|a<rsup|<around*|(|\<alpha\><rsup|x>|)><rsup|-1>><mid|\|>x|)>=P<around*|(|a<rsup|<around*|(|\<alpha\><rsup|x<rsup|\<sigma\><rsup|-1>>>|)><rsup|-1>><mid|\|>x<rsup|\<sigma\><rsup|-1>>|)>,
  </equation>

  and

  <\equation>
    <around*|(|P<rsup|\<beta\>>|)><rsup|\<tau\>><around*|(|a<mid|\|>x|)>=P<rsup|\<beta\>><around*|(|a<mid|\|>x<rsup|\<tau\><rsup|-1>>|)>=P<around*|(|a<rsup|<around*|(|\<beta\><rsup|x>|)><rsup|-1>><mid|\|>x<rsup|\<tau\><rsup|-1>>|)>,
  </equation>

  and thus we identify <math|\<tau\>=\<sigma\>> and
  <math|\<beta\><rsup|x>=\<alpha\><rsup|<around*|(|x<rsup|\<sigma\><rsup|-1>>|)>>>.
  Thus, any element <math|h\<in\>H> can be written as a product
  <math|h=\<alpha\>*\<sigma\>> with <math|\<alpha\>\<in\>\<cal-A\>> and
  <math|\<sigma\>\<in\>\<cal-X\>>.

  When the output structure is homogenous (<math|A<rsub|x>=n>), the group
  <math|H> is identified with the wreath product
  <math|S<rsub|n>\<wr\>S<rsub|X>>.
</body>

<\references>
  <\collection>
    <associate|Eq:FullInequality|<tuple|14|?>>
    <associate|Eq:Pdecomp|<tuple|29|4|../../../.TeXmacs/texts/scratch/no_name_6.tm>>
    <associate|Eq:Pnormalized|<tuple|3|?>>
    <associate|Eq:Pproper|<tuple|28|4|../../../.TeXmacs/texts/scratch/no_name_6.tm>>
    <associate|Eq:ProperConstraints|<tuple|4|?>>
    <associate|Eq:ReducedInequality|<tuple|15|?>>
    <associate|Ex:nonneg|<tuple|1|4|../../../.TeXmacs/texts/scratch/no_name_6.tm>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|A.0.1|?>>
    <associate|auto-11|<tuple|A.0.2|?>>
    <associate|auto-12|<tuple|A.0.3|?>>
    <associate|auto-13|<tuple|A.0.4|?>>
    <associate|auto-14|<tuple|A.0.4|?|../../../.TeXmacs/texts/scratch/no_name_6.tm>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.1.1|3>>
    <associate|auto-4|<tuple|1.1.2|3>>
    <associate|auto-5|<tuple|1.1.3|3>>
    <associate|auto-6|<tuple|1.2|4>>
    <associate|auto-7|<tuple|1|4>>
    <associate|auto-8|<tuple|1.3|4>>
    <associate|auto-9|<tuple|A|5>>
    <associate|footnote-1|<tuple|1|?>>
    <associate|footnr-1|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|table>
      <tuple|normal|Decomposition of the bipartite space
      <with|mode|<quote|math>|\<cal-P\>=\<cal-P\><rsup|<with|mode|<quote|text>|A>>\<otimes\>\<cal-P\><rsup|<with|mode|<quote|text>|B>>>
      into <with|mode|<quote|math>|9=1+3+2+3> subspaces. See [TODO Appendix]
      for the motivation of the interpretation.|<pageref|auto-7>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Canonicalization>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|Single party correlations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|3fn>|Correlation vectors and correlation spaces
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|3fn>|Linear functionals and Bell inequalities
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|3fn>|Bases and notations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1.5fn>|Multipartite correlations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1.5fn>|Canonicalization of Bell inequalities
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix<space|2spc>Appendix:
      relabellings (incomplete)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <with|par-left|<quote|3fn>|Relabellings
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|3fn>|Group of output relabellings
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|3fn>|Group of input relabellings
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|3fn>|Group of relabellings
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>
    </associate>
  </collection>
</auxiliary>