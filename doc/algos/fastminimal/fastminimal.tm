<TeXmacs|1.0.7.18>

<style|generic>

<\body>
  <doc-data|<doc-title|A fast algorithm for the canonical representative of a
  Bell inequality>|<doc-author|<author-data|<author-name|Denis
  Rosset>|<author-email|denis.rosset@unige.ch>>>|<doc-date|January 3, 2014>>

  In a scenario with <math|n> parties, our inequality is written using
  coefficients <math|\<beta\><around*|(|a b c\<ldots\><mid|\|>x y
  z\<ldots\>|)>>:

  <\equation>
    <big|sum><rsub|a b c\<ldots\>x y z\<ldots\>>\<beta\><around*|(|a b
    c\<ldots\><mid|\|>x y z\<ldots\>|)>P<around*|(|a b c\<ldots\><mid|\|>x y
    z\<ldots\>|)>\<leqslant\>u.
  </equation>

  A vector <math|<wide|\<beta\>|\<vect\>>> corresponding to
  <math|\<beta\><around*|(|a b c\<ldots\><mid|\|>x y z\<ldots\>|)>> can be
  written by enumerating the coefficients of <math|\<beta\><around*|(|a b
  c\<ldots\><mid|\|>x y z\<ldots\>|)>>. The enumeration is done by increasing
  the indices in this order: <math|a,x,b,y,c,z\<ldots\>>.

  The lexicographic order for such vectors is given by the following:

  <\equation>
    u\<less\><rsub|<text|lex>>v\<Leftrightarrow\>\<exists\>k<text| s.t.
    >u<rsub|j>=v<rsub|j>\<nocomma\>,\<forall\>j\<less\>k<text| and
    >u<rsub|k>\<less\>v<rsub|k>.
  </equation>

  We define the <em|canonical> representative of an inequality
  <math|\<beta\>> as the representative <math|\<beta\><rprime|'>=\<beta\><rsup|f>>
  under all permutations <math|f\<in\>F> such that <math|\<beta\><rprime|'>>
  is lexicographically minimal. The group <math|F> is the permutation group
  of all relabelings of outputs, inputs and parties acting on inequalities
  and probability distributions.

  Our algorithm fixes the role of the first party (corresponding to
  <math|a,x>). So when the first party can be exchanged with other parties,
  all such permutations have to considered independently. With this
  restriction, we only consider the following permutations:

  <\enumerate-numeric>
    <item>local permutations of outputs and inputs for the first party,

    <item>local permutations of outputs and inputs for the remaining parties,

    <item>permutations of <math|<around*|(|n-1|)>> parties excluding the
    first.
  </enumerate-numeric>

  We now consider the canonical ordering of indices
  <math|i\<rightarrow\><around*|(|a,x|)>> and
  <math|j\<rightarrow\><around*|(|b,y,c,z,\<ldots\>|)>>, with
  <math|i=1,\<ldots\>,I> and <math|j=1,\<ldots\>,J>, such that the
  <math|k>-th coefficient of <math|<wide|\<beta\>|\<vect\>>> is given by
  <math|k=<around*|(|j-1|)>I+i>. We write this <math|k>-th coefficient
  represented by the pair <math|<around*|(|i,j|)>> as <math|\<beta\><rsub|i
  j>>.

  The class 1. of permutations above affects the index <math|i> and the other
  two classes affect the index <math|j>. All allowed permutations can be
  represented by an element <math|g> of the group <math|G> which acts on the
  index <math|i> and an element <math|h> of the group <math|H> acting on
  <math|j>, such that:

  <\equation>
    \<beta\><rsub|i j><rsup|<around*|(|g,h|)>>=\<beta\><rsub|i<rsup|g<rsup|-1>>j<rsup|h<rsup|-1>>>.
  </equation>

  As shown in Fig. 1, the object <math|\<beta\><rsub|i j>> can be viewed as a
  matrix, with <math|G> acting on its rows and <math|H> acting on its
  columns. We write the columns of the matrix <math|\<beta\><rsub|i j>> as
  vectors <math|<wide|c|\<vect\>><rsub|j>=<around*|(|\<beta\><rsub|1j>,\<ldots\>\<beta\><rsub|I
  j>|)>>. We remark that the first coefficients of the vector
  <math|<wide|\<beta\>|\<vect\>>> are given by the vector
  <math|<wide|c|\<vect\>><rsub|1>>.

  <big-figure|<image|coefficientsmatrix.eps||||>|The coefficient matrix
  <math|\<beta\><rsub|i j>> for <math|\<beta\><around*|(|a b
  c\<ldots\><mid|\|>x y z\<ldots\>|)>>, showing the role of the row index
  <math|i> (enumerating the indices <math|a,x>) and the column index <math|j>
  (enumerating all other indices). The indices inside the squares represent
  the elements of the vector <math|<wide|\<beta\>|\<vect\>>>, enumerating the
  coefficients of <math|\<beta\><around*|(|a b c\<ldots\><mid|\|>x y
  z\<ldots\>|)>>.>

  <subsection|First level of the algorithm: canonical
  <math|<wide|c|\<vect\>><rprime|'><rsub|1>>>

  We start our algorithm with the following parameters:

  <\itemize-minus>
    <item>the current column <math|\<gamma\>>, initialized to
    <math|\<gamma\>=1> at the start,

    <item>a set of canonical candidates <math|\<ell\><rsup|\<gamma\>>>,
    initialized with the original inequality <math|\<beta\>>:
    <math|\<ell\><rsup|\<gamma\>>\<leftarrow\><around*|{|\<beta\>|}>>, with
    the decomposition <math|\<beta\>=<around*|(|<wide|c|\<vect\>><rsub|1>,\<ldots\><wide|c|\<vect\>><rsub|J>|)>>,

    <item>the row permutation group <math|R<rsup|\<gamma\>>>, initialized
    with <math|R<rsup|\<gamma\>>\<leftarrow\>G>,

    <item>the column permutation group <math|C<rsup|\<gamma\>>\<leftarrow\>H>,

    <item>the column permutation subgroup
    <math|S<rsup|\<gamma\>>\<subseteq\>C<rsup|\<gamma\>>> which stabilizes
    <math|\<gamma\>>,

    <item>a set of transversals <math|\<alpha\><rsub|1>,\<ldots\>\<alpha\><rsub|m>\<in\>C<rsup|\<gamma\>>>
    such that <math|C<rsup|\<gamma\>>> is the disjoint union
    <math|C<rsup|\<gamma\>>=S<rsup|\<gamma\>>\<alpha\><rsub|1>\<cup\>\<ldots\>\<cup\>S<rsup|\<gamma\>>\<alpha\><rsub|m>>,
    with <math|m=<around*|\||C<rsup|\<gamma\>>|\|>/<around*|\||S<rsup|\<gamma\>>|\|>>.
  </itemize-minus>

  The idea is to find all permutations <math|g<rsup|\<gamma\>>\<in\>R<rsup|\<gamma\>>>
  and an index <math|k\<in\><around*|{|1,\<ldots\>,m|}>> such that for the
  candidate <math|\<beta\>>, the configuration
  <math|\<beta\><rprime|'>=\<beta\><rsup|<around*|(|g<rsup|\<gamma\>>,\<alpha\><rsub|k>|)>>>
  has a vector <math|<wide|c|\<vect\>><rprime|'><rsub|\<gamma\>>>
  lexicographically minimal (here <math|\<gamma\>=1> of course, corresponding
  to the vector of the first coefficients of <math|\<beta\><rprime|'>>). To
  do so, we observe that:

  <\equation>
    <wide|c|\<vect\>><rprime|'><rsub|\<gamma\>>=<around*|(|\<beta\><rsub|\<gamma\><rsup|\<alpha\><rsub|k><rsup|-1>>>|)><rsup|g<rsup|\<gamma\>>>.
  </equation>

  To find such candidates, we enumerate all indices
  <math|j=\<gamma\><rsup|\<alpha\><rsub|k><rsup|-1>>> for
  <math|k=1,\<ldots\>,m>, and look at the minimal lexicographic
  representative <math|<wide|c|\<vect\>><rsup|<text|min>><rsub|j>=<around*|(|<wide|c|\<vect\>><rsub|j>|)><rsup|g<rsub|j>>>
  of the vector <math|<wide|c|\<vect\>><rsub|j>> under the row permutation
  group <math|R<rsup|\<gamma\>>>, with <math|g<rsub|j>\<in\>R<rsup|\<gamma\>>>.
  The canonical vector <math|<wide|c|\<vect\>><rsub|\<gamma\>><rprime|'>> is
  then the lexicographic minimum of those
  <math|<wide|c|\<vect\>><rsup|<text|min>><rsub|j>>:
  <math|<wide|c|\<vect\>><rsub|\<gamma\>><rprime|'>=min<rsub|j><wide|c|\<vect\>><rsup|<text|min>><rsub|j>>.

  We keep the pairs <math|<around*|(|k,g<rsub|j>|)>> for which the resulting
  <math|<wide|c|\<vect\>><rsub|j=\<gamma\><rsup|\<alpha\><rsub|k><rsup|-1>>>=<wide|c|\<vect\>><rprime|'><rsub|\<gamma\>>>,
  and populate the set <math|\<ell\><rsup|\<gamma\>+1>> of candidates for the
  next step with those: <math|\<ell\><rsup|\<gamma\>+1>=<around*|{|\<beta\><rsup|<around*|(|g<rsub|j>,\<alpha\><rsub|k><rsub|>|)>>|}><rsub|j,k<text|
  s.t. ><wide|c|\<vect\>><rsub|j>=<wide|c|\<vect\>><rprime|'><rsub|\<gamma\>>>>.

  <subsection|Subsequent columns>

  The algorithm will then be applied to the next column <math|\<gamma\>+1>,
  with the following updates:

  <\itemize-minus>
    <item>the set <math|\<ell\><rsup|\<gamma\>+1>> is given by the previous
    step,

    <item>the row permutation group <math|R<rsup|\<gamma\>+1>> is the
    subgroup <math|R<rsup|\<gamma\>+1>\<subseteq\>R<rsup|\<gamma\>>> leaving
    <math|<wide|c|\<vect\>><rprime|'><rsub|\<gamma\>>> invariant, because we
    want the next steps of the algorithms to keep the previous
    <math|<wide|c|\<vect\>><rprime|'><rsub|\<gamma\>>> invariant,

    <item>the column permutation group <math|C<rsup|\<gamma\>+1>\<leftarrow\>S<rsup|\<gamma\>>>
    must only permute columns with indices <math|\<geqslant\>\<gamma\>+1>,

    <item>the group <math|S<rsup|\<gamma\>+1>\<subseteq\>C<rsup|\<gamma\>+1>>
    stabilizes <math|\<gamma\>+1> and the transversals are readily computed.
  </itemize-minus>

  The algorithm is then performed as above, with the only change that the set
  <math|\<ell\><rsup|\<gamma\>+1>> can have more than one candidate; the new
  candidates are generated by looping over the candidates in
  <math|\<ell\><rsup|\<gamma\>+1>> and over <math|k=1,\<ldots\>,m>, and
  selecting the best overall <math|<wide|c|\<vect\>><rprime|'><rsub|\<gamma\>+1>>.

  When the algorithm terminates at the last column <math|\<gamma\>=J>, the
  set <math|\<ell\><rsup|J+1>> contains the minimal lexicographic
  representative <math|\<beta\><rprime|'>=<around*|(|<wide|c|\<vect\>><rsub|1><rprime|'>,\<ldots\>,<wide|c|\<vect\>><rsub|J><rprime|'>|)>>.
</body>

<\initial>
  <\collection>
    <associate|language|british>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-2|<tuple|1|2>>
    <associate|auto-3|<tuple|2|2>>
    <associate|auto-4|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|The coefficient matrix
      <with|mode|<quote|math>|\<beta\><rsub|i j>> for
      <with|mode|<quote|math>|\<beta\><around*|(|a b c\<ldots\><mid|\|>x y
      z\<ldots\>|)>>, showing the role of the row index
      <with|mode|<quote|math>|i> (enumerating the indices
      <with|mode|<quote|math>|a,x>) and the column index
      <with|mode|<quote|math>|j> (enumerating all other
      indices).|<pageref|auto-1>>
    </associate>
    <\associate|toc>
      <with|par-left|<quote|1.5fn>|First level of the algorithm: canonical
      <with|mode|<quote|math>|<wide|c|\<vect\>><rprime|'><rsub|1>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1.5fn>|Subsequent columns
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>
    </associate>
  </collection>
</auxiliary>